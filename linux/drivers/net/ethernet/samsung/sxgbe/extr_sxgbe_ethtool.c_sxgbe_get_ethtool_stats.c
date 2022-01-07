
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int eee_wakeup_error_n; } ;
struct sxgbe_priv_data {TYPE_1__ xstats; scalar_t__ eee_enabled; } ;
struct net_device {int phydev; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_4__ {int stat_offset; int sizeof_stat; } ;


 int SXGBE_STATS_LEN ;
 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;
 int phy_get_eee_err (int ) ;
 TYPE_2__* sxgbe_gstrings_stats ;

__attribute__((used)) static void sxgbe_get_ethtool_stats(struct net_device *dev,
        struct ethtool_stats *dummy, u64 *data)
{
 struct sxgbe_priv_data *priv = netdev_priv(dev);
 int i;
 char *p;

 if (priv->eee_enabled) {
  int val = phy_get_eee_err(dev->phydev);

  if (val)
   priv->xstats.eee_wakeup_error_n = val;
 }

 for (i = 0; i < SXGBE_STATS_LEN; i++) {
  p = (char *)priv + sxgbe_gstrings_stats[i].stat_offset;
  data[i] = (sxgbe_gstrings_stats[i].sizeof_stat == sizeof(u64))
   ? (*(u64 *)p) : (*(u32 *)p);
 }
}
