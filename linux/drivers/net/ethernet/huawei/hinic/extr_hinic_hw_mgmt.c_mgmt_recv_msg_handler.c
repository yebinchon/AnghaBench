
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_recv_msg {size_t mod; int msg_id; int cmd; int async_mgmt_to_pf; int msg_len; int msg; int * buf_out; } ;
struct hinic_pf_to_mgmt {struct hinic_mgmt_cb* mgmt_cb; struct hinic_hwif* hwif; } ;
struct hinic_mgmt_cb {unsigned long state; int handle; int (* cb ) (int ,int ,int ,int ,int *,int *) ;} ;
struct hinic_hwif {struct pci_dev* pdev; } ;


 unsigned long HINIC_MGMT_CB_ENABLED ;
 unsigned long HINIC_MGMT_CB_RUNNING ;
 size_t HINIC_MOD_MAX ;
 int MGMT_RESP ;
 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;
 int dev_err (int *,char*,size_t) ;
 int msg_to_mgmt_async (struct hinic_pf_to_mgmt*,size_t,int ,int *,int ,int ,int ) ;
 int stub1 (int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static void mgmt_recv_msg_handler(struct hinic_pf_to_mgmt *pf_to_mgmt,
      struct hinic_recv_msg *recv_msg)
{
 struct hinic_hwif *hwif = pf_to_mgmt->hwif;
 struct pci_dev *pdev = hwif->pdev;
 u8 *buf_out = recv_msg->buf_out;
 struct hinic_mgmt_cb *mgmt_cb;
 unsigned long cb_state;
 u16 out_size = 0;

 if (recv_msg->mod >= HINIC_MOD_MAX) {
  dev_err(&pdev->dev, "Unknown MGMT MSG module = %d\n",
   recv_msg->mod);
  return;
 }

 mgmt_cb = &pf_to_mgmt->mgmt_cb[recv_msg->mod];

 cb_state = cmpxchg(&mgmt_cb->state,
      HINIC_MGMT_CB_ENABLED,
      HINIC_MGMT_CB_ENABLED | HINIC_MGMT_CB_RUNNING);

 if ((cb_state == HINIC_MGMT_CB_ENABLED) && (mgmt_cb->cb))
  mgmt_cb->cb(mgmt_cb->handle, recv_msg->cmd,
       recv_msg->msg, recv_msg->msg_len,
       buf_out, &out_size);
 else
  dev_err(&pdev->dev, "No MGMT msg handler, mod = %d\n",
   recv_msg->mod);

 mgmt_cb->state &= ~HINIC_MGMT_CB_RUNNING;

 if (!recv_msg->async_mgmt_to_pf)

  msg_to_mgmt_async(pf_to_mgmt, recv_msg->mod, recv_msg->cmd,
      buf_out, out_size, MGMT_RESP,
      recv_msg->msg_id);
}
