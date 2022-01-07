
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct asic_fixed_properties {int sram_base_address; int sram_size; } ;
struct hl_device {int dev; scalar_t__ pldm; struct asic_fixed_properties asic_prop; } ;


 int CFG_BASE ;
 int NUMBER_OF_EXT_HW_QUEUES ;
 int WREG32 (int,int) ;
 int dev_err (int ,char*) ;
 int goya_clear_sm_regs (struct hl_device*) ;
 int goya_memset_device_memory (struct hl_device*,int,int,int,int) ;
 int goya_mmu_prepare (struct hl_device*,int) ;
 int lower_32_bits (int) ;
 int mmDMA_CH_0_WR_COMP_ADDR_LO ;
 int mmDMA_CH_1_WR_COMP_ADDR_LO ;
 int mmSYNC_MNGR_SOB_OBJ_1000 ;
 int mmSYNC_MNGR_SOB_OBJ_1007 ;
 int mmTPC_PLL_CLK_RLX_0 ;

int goya_context_switch(struct hl_device *hdev, u32 asid)
{
 struct asic_fixed_properties *prop = &hdev->asic_prop;
 u64 addr = prop->sram_base_address, sob_addr;
 u32 size = hdev->pldm ? 0x10000 : prop->sram_size;
 u64 val = 0x7777777777777777ull;
 int rc, dma_id;
 u32 channel_off = mmDMA_CH_1_WR_COMP_ADDR_LO -
     mmDMA_CH_0_WR_COMP_ADDR_LO;

 rc = goya_memset_device_memory(hdev, addr, size, val, 0);
 if (rc) {
  dev_err(hdev->dev, "Failed to clear SRAM in context switch\n");
  return rc;
 }


 sob_addr = CFG_BASE + mmSYNC_MNGR_SOB_OBJ_1007;
 WREG32(mmDMA_CH_0_WR_COMP_ADDR_LO, lower_32_bits(sob_addr));

 for (dma_id = 1 ; dma_id < NUMBER_OF_EXT_HW_QUEUES ; dma_id++) {
  sob_addr = CFG_BASE + mmSYNC_MNGR_SOB_OBJ_1000 +
       (dma_id - 1) * 4;
  WREG32(mmDMA_CH_0_WR_COMP_ADDR_LO + channel_off * dma_id,
      lower_32_bits(sob_addr));
 }

 WREG32(mmTPC_PLL_CLK_RLX_0, 0x200020);

 goya_mmu_prepare(hdev, asid);

 goya_clear_sm_regs(hdev);

 return 0;
}
