
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct iavf_adapter {size_t rss_lut_size; size_t* rss_lut; size_t num_active_queues; } ;



__attribute__((used)) static void iavf_fill_rss_lut(struct iavf_adapter *adapter)
{
 u16 i;

 for (i = 0; i < adapter->rss_lut_size; i++)
  adapter->rss_lut[i] = i % adapter->num_active_queues;
}
