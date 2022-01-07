
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dev; } ;


 int ARMCP_PACKET_DISABLE_PCI_ACCESS ;
 int dev_err (int ,char*) ;
 int hl_fw_send_pci_access_msg (struct hl_device*,int ) ;

int goya_suspend(struct hl_device *hdev)
{
 int rc;

 rc = hl_fw_send_pci_access_msg(hdev, ARMCP_PACKET_DISABLE_PCI_ACCESS);
 if (rc)
  dev_err(hdev->dev, "Failed to disable PCI access from CPU\n");

 return rc;
}
