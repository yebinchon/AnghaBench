
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asic_fixed_properties {int dram_pci_bar_size; } ;
struct hl_device {int dev; struct asic_fixed_properties asic_prop; } ;


 scalar_t__ DRAM_PHYS_BASE ;
 int EIO ;
 int GOYA_CPU_TIMEOUT_USEC ;
 int HL_DEVICE_HW_STATE_DIRTY ;
 int MMU_PAGE_TABLES_ADDR ;
 int RREG32 (int ) ;
 scalar_t__ U64_MAX ;
 int WREG32 (int ,int ) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int goya_disable_external_queues (struct hl_device*) ;
 int goya_disable_internal_queues (struct hl_device*) ;
 int goya_enable_msix (struct hl_device*) ;
 int goya_enable_timestamp (struct hl_device*) ;
 int goya_init_cpu (struct hl_device*,int ) ;
 int goya_init_dma_qmans (struct hl_device*) ;
 int goya_init_golden_registers (struct hl_device*) ;
 int goya_init_mme_qmans (struct hl_device*) ;
 int goya_init_security (struct hl_device*) ;
 int goya_init_tpc_qmans (struct hl_device*) ;
 int goya_mmu_init (struct hl_device*) ;
 scalar_t__ goya_set_ddr_bar_base (struct hl_device*,scalar_t__) ;
 int goya_tpc_mbist_workaround (struct hl_device*) ;
 int mmHW_STATE ;
 int mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG ;

__attribute__((used)) static int goya_hw_init(struct hl_device *hdev)
{
 struct asic_fixed_properties *prop = &hdev->asic_prop;
 u32 val;
 int rc;

 dev_info(hdev->dev, "Starting initialization of H/W\n");


 val = RREG32(mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG);







 WREG32(mmHW_STATE, HL_DEVICE_HW_STATE_DIRTY);

 rc = goya_init_cpu(hdev, GOYA_CPU_TIMEOUT_USEC);
 if (rc) {
  dev_err(hdev->dev, "failed to initialize CPU\n");
  return rc;
 }

 goya_tpc_mbist_workaround(hdev);

 goya_init_golden_registers(hdev);





 if (goya_set_ddr_bar_base(hdev, DRAM_PHYS_BASE +
   (MMU_PAGE_TABLES_ADDR &
   ~(prop->dram_pci_bar_size - 0x1ull))) == U64_MAX) {
  dev_err(hdev->dev,
   "failed to map DDR bar to MMU page tables\n");
  return -EIO;
 }

 rc = goya_mmu_init(hdev);
 if (rc)
  return rc;

 goya_init_security(hdev);

 goya_init_dma_qmans(hdev);

 goya_init_mme_qmans(hdev);

 goya_init_tpc_qmans(hdev);

 goya_enable_timestamp(hdev);


 rc = goya_enable_msix(hdev);
 if (rc)
  goto disable_queues;


 val = RREG32(mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG);

 return 0;

disable_queues:
 goya_disable_internal_queues(hdev);
 goya_disable_external_queues(hdev);

 return rc;
}
