
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {scalar_t__ mac_regs; } ;


 scalar_t__ DMA_MR ;
 int DMA_MR_SWR_LEN ;
 int DMA_MR_SWR_POS ;
 int EBUSY ;
 scalar_t__ XLGMAC_GET_REG_BITS (int ,int ,int ) ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int) ;
 int readl (scalar_t__) ;
 int usleep_range (int,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int xlgmac_hw_exit(struct xlgmac_pdata *pdata)
{
 unsigned int count = 2000;
 u32 regval;


 regval = readl(pdata->mac_regs + DMA_MR);
 regval = XLGMAC_SET_REG_BITS(regval, DMA_MR_SWR_POS,
         DMA_MR_SWR_LEN, 1);
 writel(regval, pdata->mac_regs + DMA_MR);
 usleep_range(10, 15);


 while (--count &&
        XLGMAC_GET_REG_BITS(readl(pdata->mac_regs + DMA_MR),
       DMA_MR_SWR_POS, DMA_MR_SWR_LEN))
  usleep_range(500, 600);

 if (!count)
  return -EBUSY;

 return 0;
}
