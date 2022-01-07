
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct enic {int rss_key; } ;


 int EINVAL ;
 int ENIC_RSS_LEN ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 int __enic_set_rsskey (struct enic*) ;
 int memcpy (int ,scalar_t__ const*,int ) ;
 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enic_set_rxfh(struct net_device *netdev, const u32 *indir,
    const u8 *hkey, const u8 hfunc)
{
 struct enic *enic = netdev_priv(netdev);

 if ((hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP) ||
     indir)
  return -EINVAL;

 if (hkey)
  memcpy(enic->rss_key, hkey, ENIC_RSS_LEN);

 return __enic_set_rsskey(enic);
}
