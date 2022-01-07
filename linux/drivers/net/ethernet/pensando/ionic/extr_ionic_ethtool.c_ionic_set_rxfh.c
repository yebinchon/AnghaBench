
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ionic_lif {int rss_types; } ;


 int EOPNOTSUPP ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 int ionic_lif_rss_config (struct ionic_lif*,int ,scalar_t__ const*,int const*) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ionic_set_rxfh(struct net_device *netdev, const u32 *indir,
     const u8 *key, const u8 hfunc)
{
 struct ionic_lif *lif = netdev_priv(netdev);
 int err;

 if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
  return -EOPNOTSUPP;

 err = ionic_lif_rss_config(lif, lif->rss_types, key, indir);
 if (err)
  return err;

 return 0;
}
