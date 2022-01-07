
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae_queue {int rx_ring; int tx_ring; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* fini_queue ) (struct hnae_queue*) ;} ;


 int hnae_fini_ring (int *) ;
 int stub1 (struct hnae_queue*) ;

__attribute__((used)) static void hnae_fini_queue(struct hnae_queue *q)
{
 if (q->dev->ops->fini_queue)
  q->dev->ops->fini_queue(q);

 hnae_fini_ring(&q->tx_ring);
 hnae_fini_ring(&q->rx_ring);
}
