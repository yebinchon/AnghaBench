
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct hnae_queue {TYPE_2__ tx_ring; TYPE_2__ rx_ring; struct hnae_handle* handle; struct hnae_ae_dev* dev; } ;
struct hnae_handle {int dummy; } ;
struct hnae_ae_dev {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* init_queue ) (struct hnae_queue*) ;} ;


 int RINGF_DIR ;
 int hnae_fini_ring (TYPE_2__*) ;
 int hnae_init_ring (struct hnae_queue*,TYPE_2__*,int) ;
 int stub1 (struct hnae_queue*) ;

__attribute__((used)) static int hnae_init_queue(struct hnae_handle *h, struct hnae_queue *q,
      struct hnae_ae_dev *dev)
{
 int ret;

 q->dev = dev;
 q->handle = h;

 ret = hnae_init_ring(q, &q->tx_ring, q->tx_ring.flags | RINGF_DIR);
 if (ret)
  goto out;

 ret = hnae_init_ring(q, &q->rx_ring, q->rx_ring.flags & ~RINGF_DIR);
 if (ret)
  goto out_with_tx_ring;

 if (dev->ops->init_queue)
  dev->ops->init_queue(q);

 return 0;

out_with_tx_ring:
 hnae_fini_ring(&q->tx_ring);
out:
 return ret;
}
