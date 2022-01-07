
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_adapter {int dummy; } ;


 unsigned int igc_get_max_rss_queues (struct igc_adapter*) ;

__attribute__((used)) static unsigned int igc_max_channels(struct igc_adapter *adapter)
{
 return igc_get_max_rss_queues(adapter);
}
