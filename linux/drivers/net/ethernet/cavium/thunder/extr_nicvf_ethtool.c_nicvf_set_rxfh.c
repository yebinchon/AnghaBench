
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
struct nicvf_rss_info {int rss_size; int key; int * ind_tbl; int enable; } ;
struct nicvf {int netdev; struct nicvf_rss_info rss_info; } ;
struct net_device {int dummy; } ;


 int EIO ;
 int EOPNOTSUPP ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 int RSS_HASH_KEY_SIZE ;
 int memcpy (int ,scalar_t__ const*,int) ;
 int netdev_err (int ,char*) ;
 struct nicvf* netdev_priv (struct net_device*) ;
 int nicvf_config_rss (struct nicvf*) ;
 int nicvf_set_rss_key (struct nicvf*) ;

__attribute__((used)) static int nicvf_set_rxfh(struct net_device *dev, const u32 *indir,
     const u8 *hkey, const u8 hfunc)
{
 struct nicvf *nic = netdev_priv(dev);
 struct nicvf_rss_info *rss = &nic->rss_info;
 int idx;

 if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
  return -EOPNOTSUPP;

 if (!rss->enable) {
  netdev_err(nic->netdev,
      "RSS is disabled, cannot change settings\n");
  return -EIO;
 }

 if (indir) {
  for (idx = 0; idx < rss->rss_size; idx++)
   rss->ind_tbl[idx] = indir[idx];
 }

 if (hkey) {
  memcpy(rss->key, hkey, RSS_HASH_KEY_SIZE * sizeof(u64));
  nicvf_set_rss_key(nic);
 }

 nicvf_config_rss(nic);
 return 0;
}
