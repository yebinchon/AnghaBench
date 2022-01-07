
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hl_device {int dummy; } ;


 int CA53_RESET ;
 int CPU_BOOT_STATUS_NA ;
 int CPU_RESET_ASSERT ;
 int CPU_RESET_CORE0_DEASSERT ;
 int KMD_MSG_FIT_RDY ;
 int RREG32 (int ) ;
 scalar_t__ SRAM_BASE_ADDR ;
 scalar_t__ UBOOT_FW_OFFSET ;
 int WREG32 (int ,int ) ;
 int goya_init_golden_registers (struct hl_device*) ;
 int goya_push_linux_to_device (struct hl_device*) ;
 int goya_push_uboot_to_device (struct hl_device*) ;
 int lower_32_bits (scalar_t__) ;
 int mmCPU_CA53_CFG_ARM_RST_CONTROL ;
 int mmCPU_CA53_CFG_RST_ADDR_LSB_0 ;
 int mmCPU_CA53_CFG_RST_ADDR_MSB_0 ;
 int mmPSOC_GLOBAL_CONF_UBOOT_MAGIC ;
 int mmPSOC_GLOBAL_CONF_UNIT_RST_N ;
 int mmPSOC_GLOBAL_CONF_WARM_REBOOT ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int goya_pldm_init_cpu(struct hl_device *hdev)
{
 u32 val, unit_rst_val;
 int rc;


 goya_init_golden_registers(hdev);


 WREG32(mmCPU_CA53_CFG_ARM_RST_CONTROL, CPU_RESET_ASSERT);
 val = RREG32(mmCPU_CA53_CFG_ARM_RST_CONTROL);


 unit_rst_val = RREG32(mmPSOC_GLOBAL_CONF_UNIT_RST_N);
 WREG32(mmPSOC_GLOBAL_CONF_UNIT_RST_N, CA53_RESET);
 val = RREG32(mmPSOC_GLOBAL_CONF_UNIT_RST_N);
 WREG32(mmPSOC_GLOBAL_CONF_UNIT_RST_N, unit_rst_val);
 val = RREG32(mmPSOC_GLOBAL_CONF_UNIT_RST_N);

 rc = goya_push_uboot_to_device(hdev);
 if (rc)
  return rc;

 rc = goya_push_linux_to_device(hdev);
 if (rc)
  return rc;

 WREG32(mmPSOC_GLOBAL_CONF_UBOOT_MAGIC, KMD_MSG_FIT_RDY);
 WREG32(mmPSOC_GLOBAL_CONF_WARM_REBOOT, CPU_BOOT_STATUS_NA);

 WREG32(mmCPU_CA53_CFG_RST_ADDR_LSB_0,
  lower_32_bits(SRAM_BASE_ADDR + UBOOT_FW_OFFSET));
 WREG32(mmCPU_CA53_CFG_RST_ADDR_MSB_0,
  upper_32_bits(SRAM_BASE_ADDR + UBOOT_FW_OFFSET));


 WREG32(mmCPU_CA53_CFG_ARM_RST_CONTROL,
     CPU_RESET_CORE0_DEASSERT);
 val = RREG32(mmCPU_CA53_CFG_ARM_RST_CONTROL);

 return 0;
}
