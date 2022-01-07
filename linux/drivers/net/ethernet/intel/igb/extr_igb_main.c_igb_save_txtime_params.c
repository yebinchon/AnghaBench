
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_ring {int launchtime_enable; } ;
struct igb_adapter {int num_tx_queues; struct igb_ring** tx_ring; } ;


 int EINVAL ;

__attribute__((used)) static int igb_save_txtime_params(struct igb_adapter *adapter, int queue,
      bool enable)
{
 struct igb_ring *ring;

 if (queue < 0 || queue > adapter->num_tx_queues)
  return -EINVAL;

 ring = adapter->tx_ring[queue];
 ring->launchtime_enable = enable;

 return 0;
}
