
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {scalar_t__ mac_regs; } ;


 scalar_t__ DMA_SBMR ;
 int DMA_SBMR_BLEN_256_LEN ;
 int DMA_SBMR_BLEN_256_POS ;
 int DMA_SBMR_EAME_LEN ;
 int DMA_SBMR_EAME_POS ;
 int DMA_SBMR_UNDEF_LEN ;
 int DMA_SBMR_UNDEF_POS ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void xlgmac_config_dma_bus(struct xlgmac_pdata *pdata)
{
 u32 regval;

 regval = readl(pdata->mac_regs + DMA_SBMR);

 regval = XLGMAC_SET_REG_BITS(regval, DMA_SBMR_EAME_POS,
         DMA_SBMR_EAME_LEN, 1);

 regval = XLGMAC_SET_REG_BITS(regval, DMA_SBMR_UNDEF_POS,
         DMA_SBMR_UNDEF_LEN, 1);
 regval = XLGMAC_SET_REG_BITS(regval, DMA_SBMR_BLEN_256_POS,
         DMA_SBMR_BLEN_256_LEN, 1);
 writel(regval, pdata->mac_regs + DMA_SBMR);
}
