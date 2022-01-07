
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct hinic_dev {int flags; int rss_hash_engine; int rss_tmpl_idx; } ;


 int EFAULT ;
 int EOPNOTSUPP ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 scalar_t__ const ETH_RSS_HASH_XOR ;
 int HINIC_RSS_ENABLE ;
 int HINIC_RSS_HASH_ENGINE_TYPE_TOEP ;
 int HINIC_RSS_HASH_ENGINE_TYPE_XOR ;
 int __set_rss_rxfh (struct net_device*,int const*,scalar_t__ const*) ;
 int hinic_rss_set_hash_engine (struct hinic_dev*,int ,int ) ;
 struct hinic_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int hinic_set_rxfh(struct net_device *netdev, const u32 *indir,
     const u8 *key, const u8 hfunc)
{
 struct hinic_dev *nic_dev = netdev_priv(netdev);
 int err = 0;

 if (!(nic_dev->flags & HINIC_RSS_ENABLE))
  return -EOPNOTSUPP;

 if (hfunc != ETH_RSS_HASH_NO_CHANGE) {
  if (hfunc != ETH_RSS_HASH_TOP && hfunc != ETH_RSS_HASH_XOR)
   return -EOPNOTSUPP;

  nic_dev->rss_hash_engine = (hfunc == ETH_RSS_HASH_XOR) ?
   HINIC_RSS_HASH_ENGINE_TYPE_XOR :
   HINIC_RSS_HASH_ENGINE_TYPE_TOEP;
  err = hinic_rss_set_hash_engine
   (nic_dev, nic_dev->rss_tmpl_idx,
   nic_dev->rss_hash_engine);
  if (err)
   return -EFAULT;
 }

 err = __set_rss_rxfh(netdev, indir, key);

 return err;
}
