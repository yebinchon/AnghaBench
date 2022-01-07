
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;


 int WREG32 (int ,int) ;
 int mmCPU_PLL_DIV_SEL_0 ;
 int mmCPU_PLL_DIV_SEL_1 ;
 int mmCPU_PLL_DIV_SEL_2 ;
 int mmCPU_PLL_DIV_SEL_3 ;
 int mmIC_PLL_DIV_SEL_0 ;
 int mmIC_PLL_DIV_SEL_1 ;
 int mmIC_PLL_DIV_SEL_2 ;
 int mmIC_PLL_DIV_SEL_3 ;
 int mmMC_PLL_DIV_SEL_0 ;
 int mmMC_PLL_DIV_SEL_1 ;
 int mmMC_PLL_DIV_SEL_2 ;
 int mmMC_PLL_DIV_SEL_3 ;
 int mmPSOC_EMMC_PLL_DIV_SEL_0 ;
 int mmPSOC_EMMC_PLL_DIV_SEL_1 ;
 int mmPSOC_EMMC_PLL_DIV_SEL_2 ;
 int mmPSOC_EMMC_PLL_DIV_SEL_3 ;
 int mmPSOC_MME_PLL_DIV_SEL_0 ;
 int mmPSOC_MME_PLL_DIV_SEL_1 ;
 int mmPSOC_MME_PLL_DIV_SEL_2 ;
 int mmPSOC_MME_PLL_DIV_SEL_3 ;
 int mmPSOC_PCI_PLL_DIV_SEL_0 ;
 int mmPSOC_PCI_PLL_DIV_SEL_1 ;
 int mmPSOC_PCI_PLL_DIV_SEL_2 ;
 int mmPSOC_PCI_PLL_DIV_SEL_3 ;
 int mmTPC_PLL_DIV_SEL_0 ;
 int mmTPC_PLL_DIV_SEL_1 ;
 int mmTPC_PLL_DIV_SEL_2 ;
 int mmTPC_PLL_DIV_SEL_3 ;

__attribute__((used)) static void goya_set_pll_refclk(struct hl_device *hdev)
{
 WREG32(mmCPU_PLL_DIV_SEL_0, 0x0);
 WREG32(mmCPU_PLL_DIV_SEL_1, 0x0);
 WREG32(mmCPU_PLL_DIV_SEL_2, 0x0);
 WREG32(mmCPU_PLL_DIV_SEL_3, 0x0);

 WREG32(mmIC_PLL_DIV_SEL_0, 0x0);
 WREG32(mmIC_PLL_DIV_SEL_1, 0x0);
 WREG32(mmIC_PLL_DIV_SEL_2, 0x0);
 WREG32(mmIC_PLL_DIV_SEL_3, 0x0);

 WREG32(mmMC_PLL_DIV_SEL_0, 0x0);
 WREG32(mmMC_PLL_DIV_SEL_1, 0x0);
 WREG32(mmMC_PLL_DIV_SEL_2, 0x0);
 WREG32(mmMC_PLL_DIV_SEL_3, 0x0);

 WREG32(mmPSOC_MME_PLL_DIV_SEL_0, 0x0);
 WREG32(mmPSOC_MME_PLL_DIV_SEL_1, 0x0);
 WREG32(mmPSOC_MME_PLL_DIV_SEL_2, 0x0);
 WREG32(mmPSOC_MME_PLL_DIV_SEL_3, 0x0);

 WREG32(mmPSOC_PCI_PLL_DIV_SEL_0, 0x0);
 WREG32(mmPSOC_PCI_PLL_DIV_SEL_1, 0x0);
 WREG32(mmPSOC_PCI_PLL_DIV_SEL_2, 0x0);
 WREG32(mmPSOC_PCI_PLL_DIV_SEL_3, 0x0);

 WREG32(mmPSOC_EMMC_PLL_DIV_SEL_0, 0x0);
 WREG32(mmPSOC_EMMC_PLL_DIV_SEL_1, 0x0);
 WREG32(mmPSOC_EMMC_PLL_DIV_SEL_2, 0x0);
 WREG32(mmPSOC_EMMC_PLL_DIV_SEL_3, 0x0);

 WREG32(mmTPC_PLL_DIV_SEL_0, 0x0);
 WREG32(mmTPC_PLL_DIV_SEL_1, 0x0);
 WREG32(mmTPC_PLL_DIV_SEL_2, 0x0);
 WREG32(mmTPC_PLL_DIV_SEL_3, 0x0);
}
