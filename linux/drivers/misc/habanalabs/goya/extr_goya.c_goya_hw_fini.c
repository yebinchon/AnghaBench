
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hl_device {int dev; scalar_t__ pldm; struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; int events_stat; } ;


 int CPU_BOOT_STATUS_DRAM_RDY ;
 int DMA_MME_TPC_RESET ;
 int DRAM_PHYS_BASE ;
 int GOYA_ASYNC_EVENT_ID_SOFT_RESET ;
 int GOYA_CPU_TIMEOUT_USEC ;
 int GOYA_PLDM_RESET_TIMEOUT_MSEC ;
 int GOYA_RESET_TIMEOUT_MSEC ;
 int HW_CAP_CPU ;
 int HW_CAP_CPU_Q ;
 int HW_CAP_DDR_0 ;
 int HW_CAP_DDR_1 ;
 int HW_CAP_DMA ;
 int HW_CAP_GOLDEN ;
 int HW_CAP_MME ;
 int HW_CAP_MMU ;
 int HW_CAP_TPC ;
 int HW_CAP_TPC_MBIST ;
 int PSOC_GLOBAL_CONF_BOOT_SEQ_RE_START_IND_SHIFT ;
 int PSOC_GLOBAL_CONF_BTM_FSM_STATE_MASK ;
 int PSOC_GLOBAL_CONF_SW_BTM_FSM_CTRL_SHIFT ;
 int RESET_ALL ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,int) ;
 int goya_disable_clk_rlx (struct hl_device*) ;
 int goya_set_ddr_bar_base (struct hl_device*,int ) ;
 int goya_set_pll_refclk (struct hl_device*) ;
 int hl_poll_timeout (struct hl_device*,int ,int,int,int,int) ;
 int memset (int ,int ,int) ;
 int mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR ;
 int mmPSOC_GLOBAL_CONF_BOOT_SEQ_RE_START ;
 int mmPSOC_GLOBAL_CONF_BTM_FSM ;
 int mmPSOC_GLOBAL_CONF_SW_ALL_RST_CFG ;
 int mmPSOC_GLOBAL_CONF_SW_BTM_FSM ;
 int mmPSOC_GLOBAL_CONF_WARM_REBOOT ;
 int msleep (int) ;

__attribute__((used)) static void goya_hw_fini(struct hl_device *hdev, bool hard_reset)
{
 struct goya_device *goya = hdev->asic_specific;
 u32 reset_timeout_ms, status;

 if (hdev->pldm)
  reset_timeout_ms = GOYA_PLDM_RESET_TIMEOUT_MSEC;
 else
  reset_timeout_ms = GOYA_RESET_TIMEOUT_MSEC;

 if (hard_reset) {
  goya_set_ddr_bar_base(hdev, DRAM_PHYS_BASE);
  goya_disable_clk_rlx(hdev);
  goya_set_pll_refclk(hdev);

  WREG32(mmPSOC_GLOBAL_CONF_SW_ALL_RST_CFG, RESET_ALL);
  dev_info(hdev->dev,
   "Issued HARD reset command, going to wait %dms\n",
   reset_timeout_ms);
 } else {
  WREG32(mmPSOC_GLOBAL_CONF_SW_ALL_RST_CFG, DMA_MME_TPC_RESET);
  dev_info(hdev->dev,
   "Issued SOFT reset command, going to wait %dms\n",
   reset_timeout_ms);
 }






 msleep(reset_timeout_ms);

 status = RREG32(mmPSOC_GLOBAL_CONF_BTM_FSM);
 if (status & PSOC_GLOBAL_CONF_BTM_FSM_STATE_MASK)
  dev_err(hdev->dev,
   "Timeout while waiting for device to reset 0x%x\n",
   status);

 if (!hard_reset) {
  goya->hw_cap_initialized &= ~(HW_CAP_DMA | HW_CAP_MME |
      HW_CAP_GOLDEN | HW_CAP_TPC);
  WREG32(mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR,
    GOYA_ASYNC_EVENT_ID_SOFT_RESET);
  return;
 }


 WREG32(mmPSOC_GLOBAL_CONF_BOOT_SEQ_RE_START,
  1 << PSOC_GLOBAL_CONF_BOOT_SEQ_RE_START_IND_SHIFT);

 WREG32(mmPSOC_GLOBAL_CONF_SW_BTM_FSM,
   0xA << PSOC_GLOBAL_CONF_SW_BTM_FSM_CTRL_SHIFT);

 goya->hw_cap_initialized &= ~(HW_CAP_CPU | HW_CAP_CPU_Q |
     HW_CAP_DDR_0 | HW_CAP_DDR_1 |
     HW_CAP_DMA | HW_CAP_MME |
     HW_CAP_MMU | HW_CAP_TPC_MBIST |
     HW_CAP_GOLDEN | HW_CAP_TPC);
 memset(goya->events_stat, 0, sizeof(goya->events_stat));

 if (!hdev->pldm) {
  int rc;






  dev_info(hdev->dev,
   "Going to wait up to %ds for CPU boot loader\n",
   GOYA_CPU_TIMEOUT_USEC / 1000 / 1000);

  rc = hl_poll_timeout(
   hdev,
   mmPSOC_GLOBAL_CONF_WARM_REBOOT,
   status,
   (status == CPU_BOOT_STATUS_DRAM_RDY),
   10000,
   GOYA_CPU_TIMEOUT_USEC);
  if (rc)
   dev_err(hdev->dev,
    "failed to wait for CPU boot loader\n");
 }
}
