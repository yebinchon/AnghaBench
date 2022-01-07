
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hl_device {scalar_t__ pldm; int dev; } ;


 int GOYA_ASYNC_EVENT_ID_HALT_MACHINE ;
 int GOYA_CPU_RESET_WAIT_MSEC ;
 int GOYA_PLDM_RESET_WAIT_MSEC ;
 int GOYA_RESET_WAIT_MSEC ;
 int KMD_MSG_GOTO_WFE ;
 int WREG32 (int ,int ) ;
 int dev_info (int ,char*) ;
 int goya_disable_external_queues (struct hl_device*) ;
 int goya_disable_internal_queues (struct hl_device*) ;
 int goya_disable_msix (struct hl_device*) ;
 int goya_disable_timestamp (struct hl_device*) ;
 int goya_dma_stall (struct hl_device*) ;
 int goya_mme_stall (struct hl_device*) ;
 int goya_mmu_remove_device_cpu_mappings (struct hl_device*) ;
 int goya_stop_external_queues (struct hl_device*) ;
 int goya_stop_internal_queues (struct hl_device*) ;
 int goya_sync_irqs (struct hl_device*) ;
 int goya_tpc_stall (struct hl_device*) ;
 int mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR ;
 int mmPSOC_GLOBAL_CONF_UBOOT_MAGIC ;
 int msleep (int ) ;

__attribute__((used)) static void goya_halt_engines(struct hl_device *hdev, bool hard_reset)
{
 u32 wait_timeout_ms, cpu_timeout_ms;

 dev_info(hdev->dev,
  "Halting compute engines and disabling interrupts\n");

 if (hdev->pldm) {
  wait_timeout_ms = GOYA_PLDM_RESET_WAIT_MSEC;
  cpu_timeout_ms = GOYA_PLDM_RESET_WAIT_MSEC;
 } else {
  wait_timeout_ms = GOYA_RESET_WAIT_MSEC;
  cpu_timeout_ms = GOYA_CPU_RESET_WAIT_MSEC;
 }

 if (hard_reset) {




  WREG32(mmPSOC_GLOBAL_CONF_UBOOT_MAGIC, KMD_MSG_GOTO_WFE);
  WREG32(mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR,
   GOYA_ASYNC_EVENT_ID_HALT_MACHINE);
  msleep(cpu_timeout_ms);
 }

 goya_stop_external_queues(hdev);
 goya_stop_internal_queues(hdev);

 msleep(wait_timeout_ms);

 goya_dma_stall(hdev);
 goya_tpc_stall(hdev);
 goya_mme_stall(hdev);

 msleep(wait_timeout_ms);

 goya_disable_external_queues(hdev);
 goya_disable_internal_queues(hdev);

 goya_disable_timestamp(hdev);

 if (hard_reset) {
  goya_disable_msix(hdev);
  goya_mmu_remove_device_cpu_mappings(hdev);
 } else {
  goya_sync_irqs(hdev);
 }
}
