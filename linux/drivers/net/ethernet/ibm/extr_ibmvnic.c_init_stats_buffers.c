
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_tx_queue_stats {int dummy; } ;
struct ibmvnic_rx_queue_stats {int dummy; } ;
struct ibmvnic_adapter {void* rx_stats_buffers; void* tx_stats_buffers; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IBMVNIC_MAX_QUEUES ;
 void* kcalloc (int ,int,int ) ;

__attribute__((used)) static int init_stats_buffers(struct ibmvnic_adapter *adapter)
{
 adapter->tx_stats_buffers =
    kcalloc(IBMVNIC_MAX_QUEUES,
     sizeof(struct ibmvnic_tx_queue_stats),
     GFP_KERNEL);
 if (!adapter->tx_stats_buffers)
  return -ENOMEM;

 adapter->rx_stats_buffers =
    kcalloc(IBMVNIC_MAX_QUEUES,
     sizeof(struct ibmvnic_rx_queue_stats),
     GFP_KERNEL);
 if (!adapter->rx_stats_buffers)
  return -ENOMEM;

 return 0;
}
