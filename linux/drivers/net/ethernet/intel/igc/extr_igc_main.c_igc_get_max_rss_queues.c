
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_adapter {int dummy; } ;


 unsigned int IGC_MAX_RX_QUEUES ;

unsigned int igc_get_max_rss_queues(struct igc_adapter *adapter)
{
 unsigned int max_rss_queues;


 max_rss_queues = IGC_MAX_RX_QUEUES;

 return max_rss_queues;
}
