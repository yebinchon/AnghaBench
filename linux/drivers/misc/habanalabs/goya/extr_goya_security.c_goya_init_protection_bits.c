
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hl_device {int dummy; } ;


 int PROT_BITS_OFFS ;
 int WREG32 (int,int) ;
 int goya_init_dma_protection_bits (struct hl_device*) ;
 int goya_init_mme_protection_bits (struct hl_device*) ;
 int goya_init_tpc_protection_bits (struct hl_device*) ;
 int goya_pb_set_block (struct hl_device*,int ) ;
 int mmPCIE_AUX_BASE ;
 int mmPCIE_CORE_BASE ;
 int mmPCIE_DB_CFG_BASE ;
 int mmPCIE_DB_CMD_BASE ;
 int mmPCIE_DB_RSV_BASE ;
 int mmPCIE_PHY_BASE ;
 int mmPCIE_WRAP_BASE ;
 int mmPCI_NRTR_BASE ;
 int mmPCI_RD_REGULATOR_BASE ;
 int mmPCI_WR_REGULATOR_BASE ;
 int mmSRAM_Y0_X0_BANK_BASE ;
 int mmSRAM_Y0_X0_RTR_BASE ;
 int mmSRAM_Y0_X1_BANK_BASE ;
 int mmSRAM_Y0_X1_RTR_BASE ;
 int mmSRAM_Y0_X2_BANK_BASE ;
 int mmSRAM_Y0_X2_RTR_BASE ;
 int mmSRAM_Y0_X3_BANK_BASE ;
 int mmSRAM_Y0_X3_RTR_BASE ;
 int mmSRAM_Y0_X4_BANK_BASE ;
 int mmSRAM_Y0_X4_RTR_BASE ;
 int mmSRAM_Y1_X0_BANK_BASE ;
 int mmSRAM_Y1_X0_RTR_BASE ;
 int mmSRAM_Y1_X1_BANK_BASE ;
 int mmSRAM_Y1_X1_RTR_BASE ;
 int mmSRAM_Y1_X2_BANK_BASE ;
 int mmSRAM_Y1_X2_RTR_BASE ;
 int mmSRAM_Y1_X3_BANK_BASE ;
 int mmSRAM_Y1_X3_RTR_BASE ;
 int mmSRAM_Y1_X4_BANK_BASE ;
 int mmSRAM_Y1_X4_RTR_BASE ;
 int mmSRAM_Y2_X0_BANK_BASE ;
 int mmSRAM_Y2_X0_RTR_BASE ;
 int mmSRAM_Y2_X1_BANK_BASE ;
 int mmSRAM_Y2_X1_RTR_BASE ;
 int mmSRAM_Y2_X2_BANK_BASE ;
 int mmSRAM_Y2_X2_RTR_BASE ;
 int mmSRAM_Y2_X3_BANK_BASE ;
 int mmSRAM_Y2_X3_RTR_BASE ;
 int mmSRAM_Y2_X4_BANK_BASE ;
 int mmSRAM_Y2_X4_RTR_BASE ;
 int mmSRAM_Y3_X0_BANK_BASE ;
 int mmSRAM_Y3_X0_RTR_BASE ;
 int mmSRAM_Y3_X1_BANK_BASE ;
 int mmSRAM_Y3_X1_RTR_BASE ;
 int mmSRAM_Y3_X2_BANK_BASE ;
 int mmSRAM_Y3_X2_RTR_BASE ;
 int mmSRAM_Y3_X3_BANK_BASE ;
 int mmSRAM_Y3_X3_RTR_BASE ;
 int mmSRAM_Y3_X4_BANK_BASE ;
 int mmSRAM_Y3_X4_RTR_BASE ;
 int mmSRAM_Y4_X0_BANK_BASE ;
 int mmSRAM_Y4_X0_RTR_BASE ;
 int mmSRAM_Y4_X1_BANK_BASE ;
 int mmSRAM_Y4_X1_RTR_BASE ;
 int mmSRAM_Y4_X2_BANK_BASE ;
 int mmSRAM_Y4_X2_RTR_BASE ;
 int mmSRAM_Y4_X3_BANK_BASE ;
 int mmSRAM_Y4_X3_RTR_BASE ;
 int mmSRAM_Y4_X4_BANK_BASE ;
 int mmSRAM_Y4_X4_RTR_BASE ;
 int mmSRAM_Y5_X0_BANK_BASE ;
 int mmSRAM_Y5_X0_RTR_BASE ;
 int mmSRAM_Y5_X1_BANK_BASE ;
 int mmSRAM_Y5_X1_RTR_BASE ;
 int mmSRAM_Y5_X2_BANK_BASE ;
 int mmSRAM_Y5_X2_RTR_BASE ;
 int mmSRAM_Y5_X3_BANK_BASE ;
 int mmSRAM_Y5_X3_RTR_BASE ;
 int mmSRAM_Y5_X4_BANK_BASE ;
 int mmSRAM_Y5_X4_RTR_BASE ;
 int mmTPC0_NRTR_BASE ;
 int mmTPC_PLL_BASE ;
 int mmTPC_PLL_CLK_RLX_0 ;

__attribute__((used)) static void goya_init_protection_bits(struct hl_device *hdev)
{
 u32 pb_addr, mask;
 u8 word_offset;

 goya_pb_set_block(hdev, mmPCI_NRTR_BASE);
 goya_pb_set_block(hdev, mmPCI_RD_REGULATOR_BASE);
 goya_pb_set_block(hdev, mmPCI_WR_REGULATOR_BASE);

 goya_pb_set_block(hdev, mmSRAM_Y0_X0_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y0_X0_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y0_X1_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y0_X1_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y0_X2_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y0_X2_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y0_X3_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y0_X3_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y0_X4_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y0_X4_RTR_BASE);

 goya_pb_set_block(hdev, mmSRAM_Y1_X0_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y1_X0_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y1_X1_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y1_X1_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y1_X2_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y1_X2_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y1_X3_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y1_X3_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y1_X4_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y1_X4_RTR_BASE);

 goya_pb_set_block(hdev, mmSRAM_Y2_X0_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y2_X0_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y2_X1_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y2_X1_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y2_X2_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y2_X2_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y2_X3_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y2_X3_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y2_X4_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y2_X4_RTR_BASE);

 goya_pb_set_block(hdev, mmSRAM_Y3_X0_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y3_X0_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y3_X1_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y3_X1_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y3_X2_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y3_X2_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y3_X3_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y3_X3_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y3_X4_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y3_X4_RTR_BASE);

 goya_pb_set_block(hdev, mmSRAM_Y4_X0_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y4_X0_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y4_X1_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y4_X1_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y4_X2_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y4_X2_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y4_X3_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y4_X3_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y4_X4_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y4_X4_RTR_BASE);

 goya_pb_set_block(hdev, mmSRAM_Y5_X0_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y5_X0_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y5_X1_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y5_X1_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y5_X2_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y5_X2_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y5_X3_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y5_X3_RTR_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y5_X4_BANK_BASE);
 goya_pb_set_block(hdev, mmSRAM_Y5_X4_RTR_BASE);

 goya_pb_set_block(hdev, mmPCIE_WRAP_BASE);
 goya_pb_set_block(hdev, mmPCIE_CORE_BASE);
 goya_pb_set_block(hdev, mmPCIE_DB_CFG_BASE);
 goya_pb_set_block(hdev, mmPCIE_DB_CMD_BASE);
 goya_pb_set_block(hdev, mmPCIE_AUX_BASE);
 goya_pb_set_block(hdev, mmPCIE_DB_RSV_BASE);
 goya_pb_set_block(hdev, mmPCIE_PHY_BASE);
 goya_pb_set_block(hdev, mmTPC0_NRTR_BASE);
 goya_pb_set_block(hdev, mmTPC_PLL_BASE);

 pb_addr = (mmTPC_PLL_CLK_RLX_0 & ~0xFFF) + PROT_BITS_OFFS;
 word_offset = ((mmTPC_PLL_CLK_RLX_0 & PROT_BITS_OFFS) >> 7) << 2;
 mask = 1 << ((mmTPC_PLL_CLK_RLX_0 & 0x7C) >> 2);

 WREG32(pb_addr + word_offset, mask);

 goya_init_mme_protection_bits(hdev);

 goya_init_dma_protection_bits(hdev);

 goya_init_tpc_protection_bits(hdev);
}
