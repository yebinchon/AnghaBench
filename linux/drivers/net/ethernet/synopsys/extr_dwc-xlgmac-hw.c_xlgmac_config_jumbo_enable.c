
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xlgmac_pdata {scalar_t__ mac_regs; TYPE_1__* netdev; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 scalar_t__ MAC_RCR ;
 int MAC_RCR_JE_LEN ;
 int MAC_RCR_JE_POS ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,unsigned int) ;
 scalar_t__ XLGMAC_STD_PACKET_MTU ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void xlgmac_config_jumbo_enable(struct xlgmac_pdata *pdata)
{
 unsigned int val;
 u32 regval;

 val = (pdata->netdev->mtu > XLGMAC_STD_PACKET_MTU) ? 1 : 0;

 regval = readl(pdata->mac_regs + MAC_RCR);
 regval = XLGMAC_SET_REG_BITS(regval, MAC_RCR_JE_POS,
         MAC_RCR_JE_LEN, val);
 writel(regval, pdata->mac_regs + MAC_RCR);
}
