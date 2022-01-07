
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct igc_adapter {int num_tx_queues; int num_rx_queues; } ;
struct TYPE_4__ {int stat_string; } ;
struct TYPE_3__ {int stat_string; } ;


 int ETH_GSTRING_LEN ;



 int IGC_GLOBAL_STATS_LEN ;
 int IGC_NETDEV_STATS_LEN ;
 int IGC_PRIV_FLAGS_STR_LEN ;
 int IGC_TEST_LEN ;
 TYPE_2__* igc_gstrings_net_stats ;
 TYPE_1__* igc_gstrings_stats ;
 int * igc_gstrings_test ;
 int igc_priv_flags_strings ;
 int memcpy (int *,int ,int) ;
 struct igc_adapter* netdev_priv (struct net_device*) ;
 int sprintf (int *,char*,int) ;

__attribute__((used)) static void igc_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
{
 struct igc_adapter *adapter = netdev_priv(netdev);
 u8 *p = data;
 int i;

 switch (stringset) {
 case 128:
  memcpy(data, *igc_gstrings_test,
         IGC_TEST_LEN * ETH_GSTRING_LEN);
  break;
 case 129:
  for (i = 0; i < IGC_GLOBAL_STATS_LEN; i++) {
   memcpy(p, igc_gstrings_stats[i].stat_string,
          ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  for (i = 0; i < IGC_NETDEV_STATS_LEN; i++) {
   memcpy(p, igc_gstrings_net_stats[i].stat_string,
          ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  for (i = 0; i < adapter->num_tx_queues; i++) {
   sprintf(p, "tx_queue_%u_packets", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "tx_queue_%u_bytes", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "tx_queue_%u_restart", i);
   p += ETH_GSTRING_LEN;
  }
  for (i = 0; i < adapter->num_rx_queues; i++) {
   sprintf(p, "rx_queue_%u_packets", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "rx_queue_%u_bytes", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "rx_queue_%u_drops", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "rx_queue_%u_csum_err", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "rx_queue_%u_alloc_failed", i);
   p += ETH_GSTRING_LEN;
  }

  break;
 case 130:
  memcpy(data, igc_priv_flags_strings,
         IGC_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
  break;
 }
}
