
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rss; } ;
struct xlgmac_pdata {scalar_t__ mac_regs; TYPE_1__ hw_feat; } ;


 int EOPNOTSUPP ;
 scalar_t__ MAC_RSSCR ;
 int MAC_RSSCR_RSSE_LEN ;
 int MAC_RSSCR_RSSE_POS ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int xlgmac_disable_rss(struct xlgmac_pdata *pdata)
{
 u32 regval;

 if (!pdata->hw_feat.rss)
  return -EOPNOTSUPP;

 regval = readl(pdata->mac_regs + MAC_RSSCR);
 regval = XLGMAC_SET_REG_BITS(regval, MAC_RSSCR_RSSE_POS,
         MAC_RSSCR_RSSE_LEN, 0);
 writel(regval, pdata->mac_regs + MAC_RSSCR);

 return 0;
}
