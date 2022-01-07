
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {int * fw; TYPE_1__* ahw; struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {size_t fw_type; } ;


 size_t QLCNIC_FLASH_ROMIMAGE ;
 size_t QLCNIC_UNKNOWN_ROMIMAGE ;
 int * fw_name ;
 int qlcnic_get_next_fwtype (struct qlcnic_adapter*) ;
 int qlcnic_validate_firmware (struct qlcnic_adapter*) ;
 int release_firmware (int *) ;
 int request_firmware (int **,int ,int *) ;
 int usleep_range (int,int) ;

void qlcnic_request_firmware(struct qlcnic_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 int rc;

 adapter->ahw->fw_type = QLCNIC_UNKNOWN_ROMIMAGE;

next:
 qlcnic_get_next_fwtype(adapter);

 if (adapter->ahw->fw_type == QLCNIC_FLASH_ROMIMAGE) {
  adapter->fw = ((void*)0);
 } else {
  rc = request_firmware(&adapter->fw,
          fw_name[adapter->ahw->fw_type],
          &pdev->dev);
  if (rc != 0)
   goto next;

  rc = qlcnic_validate_firmware(adapter);
  if (rc != 0) {
   release_firmware(adapter->fw);
   usleep_range(1000, 1500);
   goto next;
  }
 }
}
