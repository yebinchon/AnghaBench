
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct bdx_stats {int dummy; } ;
struct bdx_priv {int stats_flag; } ;


 int ARRAY_SIZE (int ) ;
 int BDX_ASSERT (int) ;
 int EINVAL ;

 int bdx_stat_names ;
 struct bdx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bdx_get_sset_count(struct net_device *netdev, int stringset)
{
 struct bdx_priv *priv = netdev_priv(netdev);

 switch (stringset) {
 case 128:
  BDX_ASSERT(ARRAY_SIZE(bdx_stat_names)
      != sizeof(struct bdx_stats) / sizeof(u64));
  return (priv->stats_flag) ? ARRAY_SIZE(bdx_stat_names) : 0;
 }

 return -EINVAL;
}
