
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_pfhwdev {int pf_to_mgmt; struct hinic_hwdev hwdev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;


 int HINIC_MOD_L2NIC ;
 int HINIC_PF_MGMT_ACTIVE ;
 int dev_err (int *,char*) ;
 int hinic_pf_to_mgmt_init (int *,struct hinic_hwif*) ;
 int hinic_register_mgmt_msg_cb (int *,int ,struct hinic_pfhwdev*,int ) ;
 int hinic_set_pf_action (struct hinic_hwif*,int ) ;
 int nic_mgmt_msg_handler ;

__attribute__((used)) static int init_pfhwdev(struct hinic_pfhwdev *pfhwdev)
{
 struct hinic_hwdev *hwdev = &pfhwdev->hwdev;
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;
 int err;

 err = hinic_pf_to_mgmt_init(&pfhwdev->pf_to_mgmt, hwif);
 if (err) {
  dev_err(&pdev->dev, "Failed to initialize PF to MGMT channel\n");
  return err;
 }

 hinic_register_mgmt_msg_cb(&pfhwdev->pf_to_mgmt, HINIC_MOD_L2NIC,
       pfhwdev, nic_mgmt_msg_handler);

 hinic_set_pf_action(hwif, HINIC_PF_MGMT_ACTIVE);
 return 0;
}
