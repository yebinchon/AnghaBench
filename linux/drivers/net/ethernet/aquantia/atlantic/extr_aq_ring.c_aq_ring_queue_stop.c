
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct aq_ring_s {int idx; int aq_nic; } ;


 int __netif_subqueue_stopped (struct net_device*,int ) ;
 struct net_device* aq_nic_get_ndev (int ) ;
 int netif_stop_subqueue (struct net_device*,int ) ;

void aq_ring_queue_stop(struct aq_ring_s *ring)
{
 struct net_device *ndev = aq_nic_get_ndev(ring->aq_nic);

 if (!__netif_subqueue_stopped(ndev, ring->idx))
  netif_stop_subqueue(ndev, ring->idx);
}
