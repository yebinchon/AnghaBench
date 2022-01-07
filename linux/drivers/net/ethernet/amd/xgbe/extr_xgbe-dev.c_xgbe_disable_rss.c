
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rss; } ;
struct xgbe_prv_data {TYPE_1__ hw_feat; } ;


 int EOPNOTSUPP ;
 int MAC_RSSCR ;
 int RSSE ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;

__attribute__((used)) static int xgbe_disable_rss(struct xgbe_prv_data *pdata)
{
 if (!pdata->hw_feat.rss)
  return -EOPNOTSUPP;

 XGMAC_IOWRITE_BITS(pdata, MAC_RSSCR, RSSE, 0);

 return 0;
}
