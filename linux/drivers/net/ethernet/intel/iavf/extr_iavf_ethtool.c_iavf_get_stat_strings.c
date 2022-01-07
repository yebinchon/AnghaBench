
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {unsigned int num_tx_queues; } ;


 int iavf_add_stat_strings (int **,int ,...) ;
 int iavf_gstrings_queue_stats ;
 int iavf_gstrings_stats ;

__attribute__((used)) static void iavf_get_stat_strings(struct net_device *netdev, u8 *data)
{
 unsigned int i;

 iavf_add_stat_strings(&data, iavf_gstrings_stats);




 for (i = 0; i < netdev->num_tx_queues; i++) {
  iavf_add_stat_strings(&data, iavf_gstrings_queue_stats,
          "tx", i);
  iavf_add_stat_strings(&data, iavf_gstrings_queue_stats,
          "rx", i);
 }
}
