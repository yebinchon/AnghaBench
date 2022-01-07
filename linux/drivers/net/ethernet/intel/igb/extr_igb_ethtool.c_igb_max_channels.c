
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_adapter {int dummy; } ;


 unsigned int igb_get_max_rss_queues (struct igb_adapter*) ;

__attribute__((used)) static unsigned int igb_max_channels(struct igb_adapter *adapter)
{
 return igb_get_max_rss_queues(adapter);
}
