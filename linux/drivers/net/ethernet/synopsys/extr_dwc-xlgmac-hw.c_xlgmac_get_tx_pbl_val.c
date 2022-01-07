
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {int channel_head; } ;


 int DMA_CH_TCR ;
 int DMA_CH_TCR_PBL_LEN ;
 int DMA_CH_TCR_PBL_POS ;
 int XLGMAC_DMA_REG (int ,int ) ;
 int XLGMAC_GET_REG_BITS (int,int ,int ) ;
 int readl (int ) ;

__attribute__((used)) static int xlgmac_get_tx_pbl_val(struct xlgmac_pdata *pdata)
{
 u32 regval;

 regval = readl(XLGMAC_DMA_REG(pdata->channel_head, DMA_CH_TCR));
 regval = XLGMAC_GET_REG_BITS(regval, DMA_CH_TCR_PBL_POS,
         DMA_CH_TCR_PBL_LEN);
 return regval;
}
