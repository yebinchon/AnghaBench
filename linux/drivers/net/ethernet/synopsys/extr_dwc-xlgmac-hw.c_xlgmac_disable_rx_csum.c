
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {scalar_t__ mac_regs; } ;


 scalar_t__ MAC_RCR ;
 int MAC_RCR_IPC_LEN ;
 int MAC_RCR_IPC_POS ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int xlgmac_disable_rx_csum(struct xlgmac_pdata *pdata)
{
 u32 regval;

 regval = readl(pdata->mac_regs + MAC_RCR);
 regval = XLGMAC_SET_REG_BITS(regval, MAC_RCR_IPC_POS,
         MAC_RCR_IPC_LEN, 0);
 writel(regval, pdata->mac_regs + MAC_RCR);

 return 0;
}
