
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct xgbe_hw_if {unsigned int (* set_rss_lookup_table ) (struct xgbe_prv_data*,int const*) ;unsigned int (* set_rss_hash_key ) (struct xgbe_prv_data*,scalar_t__ const*) ;} ;
struct xgbe_prv_data {struct xgbe_hw_if hw_if; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 int netdev_err (struct net_device*,char*) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 unsigned int stub1 (struct xgbe_prv_data*,int const*) ;
 unsigned int stub2 (struct xgbe_prv_data*,scalar_t__ const*) ;

__attribute__((used)) static int xgbe_set_rxfh(struct net_device *netdev, const u32 *indir,
    const u8 *key, const u8 hfunc)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 unsigned int ret;

 if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP) {
  netdev_err(netdev, "unsupported hash function\n");
  return -EOPNOTSUPP;
 }

 if (indir) {
  ret = hw_if->set_rss_lookup_table(pdata, indir);
  if (ret)
   return ret;
 }

 if (key) {
  ret = hw_if->set_rss_hash_key(pdata, key);
  if (ret)
   return ret;
 }

 return 0;
}
