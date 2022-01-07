
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ena_stats {char* name; } ;
struct ena_adapter {int num_queues; } ;


 int ENA_STATS_ARRAY_RX ;
 int ENA_STATS_ARRAY_TX ;
 int ETH_GSTRING_LEN ;
 struct ena_stats* ena_stats_rx_strings ;
 struct ena_stats* ena_stats_tx_strings ;
 int snprintf (int *,int ,char*,int,char*) ;

__attribute__((used)) static void ena_queue_strings(struct ena_adapter *adapter, u8 **data)
{
 const struct ena_stats *ena_stats;
 int i, j;

 for (i = 0; i < adapter->num_queues; i++) {

  for (j = 0; j < ENA_STATS_ARRAY_TX; j++) {
   ena_stats = &ena_stats_tx_strings[j];

   snprintf(*data, ETH_GSTRING_LEN,
     "queue_%u_tx_%s", i, ena_stats->name);
    (*data) += ETH_GSTRING_LEN;
  }

  for (j = 0; j < ENA_STATS_ARRAY_RX; j++) {
   ena_stats = &ena_stats_rx_strings[j];

   snprintf(*data, ETH_GSTRING_LEN,
     "queue_%u_rx_%s", i, ena_stats->name);
   (*data) += ETH_GSTRING_LEN;
  }
 }
}
