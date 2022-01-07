
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct workqueue_struct {int dummy; } ;
struct qlcnic_vport {int spoofchk; int mac; int min_tx_bw; int max_tx_bw; int vlan_mode; } ;
struct TYPE_6__ {int lock; int wait_list; } ;
struct TYPE_5__ {int lock; int wait_list; } ;
struct qlcnic_back_channel {struct workqueue_struct* bc_trans_wq; struct workqueue_struct* bc_async_wq; struct qlcnic_adapter* adapter; int queue_lock; int vf_async_work; int async_cmd_list; } ;
struct qlcnic_vf_info {int num_vfs; struct qlcnic_vf_info* vf_info; struct qlcnic_vport* vp; int trans_work; int ch_free_cmpl; TYPE_2__ rcv_pend; TYPE_1__ rcv_act; int vlan_list_lock; int send_cmd_lock; int pci_func; struct qlcnic_adapter* adapter; struct qlcnic_back_channel bc; } ;
struct qlcnic_sriov {int num_vfs; struct qlcnic_sriov* vf_info; struct qlcnic_vport* vp; int trans_work; int ch_free_cmpl; TYPE_2__ rcv_pend; TYPE_1__ rcv_act; int vlan_list_lock; int send_cmd_lock; int pci_func; struct qlcnic_adapter* adapter; struct qlcnic_back_channel bc; } ;
struct qlcnic_adapter {TYPE_4__* ahw; TYPE_3__* pdev; } ;
struct TYPE_8__ {struct qlcnic_vf_info* sriov; } ;
struct TYPE_7__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MAX_BW ;
 int MIN_BW ;
 int QLC_GUEST_VLAN_MODE ;
 struct workqueue_struct* create_singlethread_workqueue (char*) ;
 int destroy_workqueue (struct workqueue_struct*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ,int) ;
 int eth_random_addr (int ) ;
 int init_completion (int *) ;
 struct qlcnic_vf_info* kcalloc (int,int,int ) ;
 int kfree (struct qlcnic_vf_info*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int qlcnic_sriov_enable_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_handle_async_issue_cmd ;
 scalar_t__ qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_process_bc_cmd ;
 int qlcnic_sriov_virtid_fn (struct qlcnic_adapter*,int) ;
 int spin_lock_init (int *) ;

int qlcnic_sriov_init(struct qlcnic_adapter *adapter, int num_vfs)
{
 struct qlcnic_sriov *sriov;
 struct qlcnic_back_channel *bc;
 struct workqueue_struct *wq;
 struct qlcnic_vport *vp;
 struct qlcnic_vf_info *vf;
 int err, i;

 if (!qlcnic_sriov_enable_check(adapter))
  return -EIO;

 sriov = kzalloc(sizeof(struct qlcnic_sriov), GFP_KERNEL);
 if (!sriov)
  return -ENOMEM;

 adapter->ahw->sriov = sriov;
 sriov->num_vfs = num_vfs;
 bc = &sriov->bc;
 sriov->vf_info = kcalloc(num_vfs, sizeof(struct qlcnic_vf_info),
     GFP_KERNEL);
 if (!sriov->vf_info) {
  err = -ENOMEM;
  goto qlcnic_free_sriov;
 }

 wq = create_singlethread_workqueue("bc-trans");
 if (wq == ((void*)0)) {
  err = -ENOMEM;
  dev_err(&adapter->pdev->dev,
   "Cannot create bc-trans workqueue\n");
  goto qlcnic_free_vf_info;
 }

 bc->bc_trans_wq = wq;

 wq = create_singlethread_workqueue("async");
 if (wq == ((void*)0)) {
  err = -ENOMEM;
  dev_err(&adapter->pdev->dev, "Cannot create async workqueue\n");
  goto qlcnic_destroy_trans_wq;
 }

 bc->bc_async_wq = wq;
 INIT_LIST_HEAD(&bc->async_cmd_list);
 INIT_WORK(&bc->vf_async_work, qlcnic_sriov_handle_async_issue_cmd);
 spin_lock_init(&bc->queue_lock);
 bc->adapter = adapter;

 for (i = 0; i < num_vfs; i++) {
  vf = &sriov->vf_info[i];
  vf->adapter = adapter;
  vf->pci_func = qlcnic_sriov_virtid_fn(adapter, i);
  mutex_init(&vf->send_cmd_lock);
  spin_lock_init(&vf->vlan_list_lock);
  INIT_LIST_HEAD(&vf->rcv_act.wait_list);
  INIT_LIST_HEAD(&vf->rcv_pend.wait_list);
  spin_lock_init(&vf->rcv_act.lock);
  spin_lock_init(&vf->rcv_pend.lock);
  init_completion(&vf->ch_free_cmpl);

  INIT_WORK(&vf->trans_work, qlcnic_sriov_process_bc_cmd);

  if (qlcnic_sriov_pf_check(adapter)) {
   vp = kzalloc(sizeof(struct qlcnic_vport), GFP_KERNEL);
   if (!vp) {
    err = -ENOMEM;
    goto qlcnic_destroy_async_wq;
   }
   sriov->vf_info[i].vp = vp;
   vp->vlan_mode = QLC_GUEST_VLAN_MODE;
   vp->max_tx_bw = MAX_BW;
   vp->min_tx_bw = MIN_BW;
   vp->spoofchk = 0;
   eth_random_addr(vp->mac);
   dev_info(&adapter->pdev->dev,
     "MAC Address %pM is configured for VF %d\n",
     vp->mac, i);
  }
 }

 return 0;

qlcnic_destroy_async_wq:
 destroy_workqueue(bc->bc_async_wq);

qlcnic_destroy_trans_wq:
 destroy_workqueue(bc->bc_trans_wq);

qlcnic_free_vf_info:
 kfree(sriov->vf_info);

qlcnic_free_sriov:
 kfree(adapter->ahw->sriov);
 return err;
}
