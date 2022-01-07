
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int real_num_tx_queues; } ;


 int netif_stop_subqueue (struct net_device*,int) ;

__attribute__((used)) static inline void stop_txqs(struct net_device *netdev)
{
 int i;

 for (i = 0; i < netdev->real_num_tx_queues; i++)
  netif_stop_subqueue(netdev, i);
}
