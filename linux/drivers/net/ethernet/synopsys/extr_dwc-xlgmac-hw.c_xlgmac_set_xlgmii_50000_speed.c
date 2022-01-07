
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {scalar_t__ mac_regs; } ;


 scalar_t__ MAC_TCR ;
 int MAC_TCR_SS_LEN ;
 int MAC_TCR_SS_POS ;
 int XLGMAC_GET_REG_BITS (int,int ,int ) ;
 int XLGMAC_SET_REG_BITS (int,int ,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int xlgmac_set_xlgmii_50000_speed(struct xlgmac_pdata *pdata)
{
 u32 regval;

 regval = XLGMAC_GET_REG_BITS(readl(pdata->mac_regs + MAC_TCR),
         MAC_TCR_SS_POS, MAC_TCR_SS_LEN);
 if (regval == 0x2)
  return 0;

 regval = readl(pdata->mac_regs + MAC_TCR);
 regval = XLGMAC_SET_REG_BITS(regval, MAC_TCR_SS_POS,
         MAC_TCR_SS_LEN, 0x2);
 writel(regval, pdata->mac_regs + MAC_TCR);

 return 0;
}
