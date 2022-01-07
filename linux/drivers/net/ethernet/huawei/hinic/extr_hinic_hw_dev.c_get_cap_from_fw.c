
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_pfhwdev {int pf_to_mgmt; struct hinic_hwdev hwdev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_dev_cap {int dummy; } ;
typedef int dev_cap ;


 int HINIC_CFG_NIC_CAP ;
 int HINIC_MGMT_MSG_SYNC ;
 int HINIC_MOD_CFGM ;
 int dev_err (int *,char*) ;
 int get_capability (struct hinic_hwdev*,struct hinic_dev_cap*) ;
 int hinic_msg_to_mgmt (int *,int ,int ,struct hinic_dev_cap*,int,struct hinic_dev_cap*,int*,int ) ;

__attribute__((used)) static int get_cap_from_fw(struct hinic_pfhwdev *pfhwdev)
{
 struct hinic_hwdev *hwdev = &pfhwdev->hwdev;
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;
 struct hinic_dev_cap dev_cap;
 u16 in_len, out_len;
 int err;

 in_len = 0;
 out_len = sizeof(dev_cap);

 err = hinic_msg_to_mgmt(&pfhwdev->pf_to_mgmt, HINIC_MOD_CFGM,
    HINIC_CFG_NIC_CAP, &dev_cap, in_len, &dev_cap,
    &out_len, HINIC_MGMT_MSG_SYNC);
 if (err) {
  dev_err(&pdev->dev, "Failed to get capability from FW\n");
  return err;
 }

 return get_capability(hwdev, &dev_cap);
}
