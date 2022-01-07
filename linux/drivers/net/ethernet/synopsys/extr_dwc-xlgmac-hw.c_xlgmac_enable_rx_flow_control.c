
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {scalar_t__ mac_regs; } ;


 scalar_t__ MAC_RFCR ;
 int MAC_RFCR_RFE_LEN ;
 int MAC_RFCR_RFE_POS ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int xlgmac_enable_rx_flow_control(struct xlgmac_pdata *pdata)
{
 u32 regval;

 regval = readl(pdata->mac_regs + MAC_RFCR);
 regval = XLGMAC_SET_REG_BITS(regval, MAC_RFCR_RFE_POS,
         MAC_RFCR_RFE_LEN, 1);
 writel(regval, pdata->mac_regs + MAC_RFCR);

 return 0;
}
