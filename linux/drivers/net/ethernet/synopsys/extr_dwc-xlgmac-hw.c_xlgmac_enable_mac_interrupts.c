
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct xlgmac_pdata {scalar_t__ mac_regs; } ;


 scalar_t__ MAC_IER ;
 int MAC_IER_TSIE_LEN ;
 int MAC_IER_TSIE_POS ;
 scalar_t__ MMC_RIER ;
 int MMC_RIER_ALL_INTERRUPTS_LEN ;
 int MMC_RIER_ALL_INTERRUPTS_POS ;
 scalar_t__ MMC_TIER ;
 int MMC_TIER_ALL_INTERRUPTS_LEN ;
 int MMC_TIER_ALL_INTERRUPTS_POS ;
 unsigned int XLGMAC_SET_REG_BITS (unsigned int,int ,int ,int) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void xlgmac_enable_mac_interrupts(struct xlgmac_pdata *pdata)
{
 unsigned int mac_ier = 0;
 u32 regval;


 mac_ier = XLGMAC_SET_REG_BITS(mac_ier, MAC_IER_TSIE_POS,
          MAC_IER_TSIE_LEN, 1);

 writel(mac_ier, pdata->mac_regs + MAC_IER);


 regval = readl(pdata->mac_regs + MMC_RIER);
 regval = XLGMAC_SET_REG_BITS(regval, MMC_RIER_ALL_INTERRUPTS_POS,
         MMC_RIER_ALL_INTERRUPTS_LEN, 0xffffffff);
 writel(regval, pdata->mac_regs + MMC_RIER);
 regval = readl(pdata->mac_regs + MMC_TIER);
 regval = XLGMAC_SET_REG_BITS(regval, MMC_TIER_ALL_INTERRUPTS_POS,
         MMC_TIER_ALL_INTERRUPTS_LEN, 0xffffffff);
 writel(regval, pdata->mac_regs + MMC_TIER);
}
