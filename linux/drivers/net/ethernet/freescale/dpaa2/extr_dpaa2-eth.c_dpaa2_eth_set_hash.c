
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct dpaa2_eth_priv {int dummy; } ;
struct TYPE_3__ {int rxnfc_field; int id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DPAA2_ETH_RX_DIST_HASH ;
 int EOPNOTSUPP ;
 TYPE_1__* dist_fields ;
 int dpaa2_eth_hash_enabled (struct dpaa2_eth_priv*) ;
 int dpaa2_eth_set_dist_key (struct net_device*,int ,int) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;

int dpaa2_eth_set_hash(struct net_device *net_dev, u64 flags)
{
 struct dpaa2_eth_priv *priv = netdev_priv(net_dev);
 u64 key = 0;
 int i;

 if (!dpaa2_eth_hash_enabled(priv))
  return -EOPNOTSUPP;

 for (i = 0; i < ARRAY_SIZE(dist_fields); i++)
  if (dist_fields[i].rxnfc_field & flags)
   key |= dist_fields[i].id;

 return dpaa2_eth_set_dist_key(net_dev, DPAA2_ETH_RX_DIST_HASH, key);
}
