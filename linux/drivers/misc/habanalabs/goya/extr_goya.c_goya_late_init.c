
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asic_fixed_properties {int dram_size; } ;
struct hl_device {int dev; struct asic_fixed_properties asic_prop; } ;


 int ARMCP_PACKET_ENABLE_PCI_ACCESS ;
 int GOYA_ASYNC_EVENT_ID_INTS_REGISTER ;
 int WREG32 (int ,int ) ;
 int dev_err (int ,char*,int) ;
 int goya_armcp_info_get (struct hl_device*) ;
 int goya_fetch_psoc_frequency (struct hl_device*) ;
 int goya_init_cpu_queues (struct hl_device*) ;
 int goya_mmu_add_mappings_for_device_cpu (struct hl_device*) ;
 int goya_mmu_clear_pgt_range (struct hl_device*) ;
 int goya_mmu_set_dram_default_page (struct hl_device*) ;
 int goya_test_cpu_queue (struct hl_device*) ;
 int hl_fw_send_pci_access_msg (struct hl_device*,int ) ;
 int ilog2 (int ) ;
 int mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR ;
 int mmMMU_LOG2_DDR_SIZE ;

int goya_late_init(struct hl_device *hdev)
{
 struct asic_fixed_properties *prop = &hdev->asic_prop;
 int rc;

 goya_fetch_psoc_frequency(hdev);

 rc = goya_mmu_clear_pgt_range(hdev);
 if (rc) {
  dev_err(hdev->dev,
   "Failed to clear MMU page tables range %d\n", rc);
  return rc;
 }

 rc = goya_mmu_set_dram_default_page(hdev);
 if (rc) {
  dev_err(hdev->dev, "Failed to set DRAM default page %d\n", rc);
  return rc;
 }

 rc = goya_mmu_add_mappings_for_device_cpu(hdev);
 if (rc)
  return rc;

 rc = goya_init_cpu_queues(hdev);
 if (rc)
  return rc;

 rc = goya_test_cpu_queue(hdev);
 if (rc)
  return rc;

 rc = goya_armcp_info_get(hdev);
 if (rc) {
  dev_err(hdev->dev, "Failed to get armcp info %d\n", rc);
  return rc;
 }





 WREG32(mmMMU_LOG2_DDR_SIZE, ilog2(prop->dram_size));

 rc = hl_fw_send_pci_access_msg(hdev, ARMCP_PACKET_ENABLE_PCI_ACCESS);
 if (rc) {
  dev_err(hdev->dev,
   "Failed to enable PCI access from CPU %d\n", rc);
  return rc;
 }

 WREG32(mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR,
   GOYA_ASYNC_EVENT_ID_INTS_REGISTER);

 return 0;
}
