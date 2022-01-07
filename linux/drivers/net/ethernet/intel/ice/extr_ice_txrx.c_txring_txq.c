
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;
struct ice_ring {int q_index; int netdev; } ;


 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;

__attribute__((used)) static struct netdev_queue *txring_txq(const struct ice_ring *ring)
{
 return netdev_get_tx_queue(ring->netdev, ring->q_index);
}
