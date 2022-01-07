
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rss; } ;
struct xgbe_prv_data {int rss_options; TYPE_1__ hw_feat; } ;


 int EOPNOTSUPP ;
 int MAC_RSSCR ;
 int RSSE ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,int ) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;
 int xgbe_write_rss_hash_key (struct xgbe_prv_data*) ;
 int xgbe_write_rss_lookup_table (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_enable_rss(struct xgbe_prv_data *pdata)
{
 int ret;

 if (!pdata->hw_feat.rss)
  return -EOPNOTSUPP;


 ret = xgbe_write_rss_hash_key(pdata);
 if (ret)
  return ret;


 ret = xgbe_write_rss_lookup_table(pdata);
 if (ret)
  return ret;


 XGMAC_IOWRITE(pdata, MAC_RSSCR, pdata->rss_options);


 XGMAC_IOWRITE_BITS(pdata, MAC_RSSCR, RSSE, 1);

 return 0;
}
