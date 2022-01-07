
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct xgbe_prv_data {int tx_ring_count; int rx_ring_count; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int stat_string; } ;


 int ETH_GSTRING_LEN ;

 int XGBE_STATS_COUNT ;
 int memcpy (int *,int ,int ) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int sprintf (int *,char*,int) ;
 TYPE_1__* xgbe_gstring_stats ;

__attribute__((used)) static void xgbe_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 int i;

 switch (stringset) {
 case 128:
  for (i = 0; i < XGBE_STATS_COUNT; i++) {
   memcpy(data, xgbe_gstring_stats[i].stat_string,
          ETH_GSTRING_LEN);
   data += ETH_GSTRING_LEN;
  }
  for (i = 0; i < pdata->tx_ring_count; i++) {
   sprintf(data, "txq_%u_packets", i);
   data += ETH_GSTRING_LEN;
   sprintf(data, "txq_%u_bytes", i);
   data += ETH_GSTRING_LEN;
  }
  for (i = 0; i < pdata->rx_ring_count; i++) {
   sprintf(data, "rxq_%u_packets", i);
   data += ETH_GSTRING_LEN;
   sprintf(data, "rxq_%u_bytes", i);
   data += ETH_GSTRING_LEN;
  }
  break;
 }
}
