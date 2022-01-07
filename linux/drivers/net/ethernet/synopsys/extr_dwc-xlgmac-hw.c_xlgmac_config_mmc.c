
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {scalar_t__ mac_regs; } ;


 scalar_t__ MMC_CR ;
 int MMC_CR_CR_LEN ;
 int MMC_CR_CR_POS ;
 int MMC_CR_ROR_LEN ;
 int MMC_CR_ROR_POS ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void xlgmac_config_mmc(struct xlgmac_pdata *pdata)
{
 u32 regval;

 regval = readl(pdata->mac_regs + MMC_CR);

 regval = XLGMAC_SET_REG_BITS(regval, MMC_CR_ROR_POS,
         MMC_CR_ROR_LEN, 1);

 regval = XLGMAC_SET_REG_BITS(regval, MMC_CR_CR_POS,
         MMC_CR_CR_LEN, 1);
 writel(regval, pdata->mac_regs + MMC_CR);
}
