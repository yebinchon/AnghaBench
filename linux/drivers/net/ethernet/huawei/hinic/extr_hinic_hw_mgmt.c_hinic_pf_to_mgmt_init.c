
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_hwdev {int aeqs; } ;
struct hinic_pfhwdev {struct hinic_hwdev hwdev; } ;
struct hinic_pf_to_mgmt {int cmd_chain; scalar_t__ sync_msg_id; int sync_msg_lock; struct hinic_hwif* hwif; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;


 int HINIC_MSG_FROM_MGMT_CPU ;
 int alloc_msg_buf (struct hinic_pf_to_mgmt*) ;
 int dev_err (int *,char*) ;
 int hinic_aeq_register_hw_cb (int *,int ,struct hinic_pf_to_mgmt*,int ) ;
 int hinic_api_cmd_init (int ,struct hinic_hwif*) ;
 int mgmt_msg_aeqe_handler ;
 struct hinic_pfhwdev* mgmt_to_pfhwdev (struct hinic_pf_to_mgmt*) ;
 int sema_init (int *,int) ;

int hinic_pf_to_mgmt_init(struct hinic_pf_to_mgmt *pf_to_mgmt,
     struct hinic_hwif *hwif)
{
 struct hinic_pfhwdev *pfhwdev = mgmt_to_pfhwdev(pf_to_mgmt);
 struct hinic_hwdev *hwdev = &pfhwdev->hwdev;
 struct pci_dev *pdev = hwif->pdev;
 int err;

 pf_to_mgmt->hwif = hwif;

 sema_init(&pf_to_mgmt->sync_msg_lock, 1);
 pf_to_mgmt->sync_msg_id = 0;

 err = alloc_msg_buf(pf_to_mgmt);
 if (err) {
  dev_err(&pdev->dev, "Failed to allocate msg buffers\n");
  return err;
 }

 err = hinic_api_cmd_init(pf_to_mgmt->cmd_chain, hwif);
 if (err) {
  dev_err(&pdev->dev, "Failed to initialize cmd chains\n");
  return err;
 }

 hinic_aeq_register_hw_cb(&hwdev->aeqs, HINIC_MSG_FROM_MGMT_CPU,
     pf_to_mgmt,
     mgmt_msg_aeqe_handler);
 return 0;
}
