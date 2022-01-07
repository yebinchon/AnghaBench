
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_queue {int dummy; } ;
struct ionic_queue {int index; TYPE_1__* lif; } ;
struct TYPE_2__ {int netdev; } ;


 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;

__attribute__((used)) static inline struct netdev_queue *q_to_ndq(struct ionic_queue *q)
{
 return netdev_get_tx_queue(q->lif->netdev, q->index);
}
