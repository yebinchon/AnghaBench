
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 int DPAA2_ETH_NUM_EXTRA_STATS ;
 int DPAA2_ETH_NUM_STATS ;
 int ETH_GSTRING_LEN ;

 int * dpaa2_ethtool_extras ;
 int * dpaa2_ethtool_stats ;
 int strlcpy (int *,int ,int ) ;

__attribute__((used)) static void dpaa2_eth_get_strings(struct net_device *netdev, u32 stringset,
      u8 *data)
{
 u8 *p = data;
 int i;

 switch (stringset) {
 case 128:
  for (i = 0; i < DPAA2_ETH_NUM_STATS; i++) {
   strlcpy(p, dpaa2_ethtool_stats[i], ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  for (i = 0; i < DPAA2_ETH_NUM_EXTRA_STATS; i++) {
   strlcpy(p, dpaa2_ethtool_extras[i], ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  break;
 }
}
