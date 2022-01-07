
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int queue_restarts; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct aq_ring_s {TYPE_2__ stats; int idx; int aq_nic; } ;


 scalar_t__ __netif_subqueue_stopped (struct net_device*,int ) ;
 struct net_device* aq_nic_get_ndev (int ) ;
 int netif_wake_subqueue (struct net_device*,int ) ;

void aq_ring_queue_wake(struct aq_ring_s *ring)
{
 struct net_device *ndev = aq_nic_get_ndev(ring->aq_nic);

 if (__netif_subqueue_stopped(ndev, ring->idx)) {
  netif_wake_subqueue(ndev, ring->idx);
  ring->stats.tx.queue_restarts++;
 }
}
