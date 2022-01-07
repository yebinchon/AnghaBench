
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;
struct iavf_ring {int queue_index; int netdev; } ;


 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;

__attribute__((used)) static inline struct netdev_queue *txring_txq(const struct iavf_ring *ring)
{
 return netdev_get_tx_queue(ring->netdev, ring->queue_index);
}
