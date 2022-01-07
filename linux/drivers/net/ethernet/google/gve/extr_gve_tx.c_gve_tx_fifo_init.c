
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gve_tx_fifo {int size; scalar_t__ head; int available; TYPE_1__* qpl; int base; } ;
struct gve_priv {int dev; } ;
struct TYPE_2__ {int num_entries; int id; int pages; } ;


 int ENOMEM ;
 int PAGE_KERNEL ;
 int PAGE_SIZE ;
 int VM_MAP ;
 int atomic_set (int *,int) ;
 int drv ;
 int netif_err (struct gve_priv*,int ,int ,char*,int ) ;
 scalar_t__ unlikely (int) ;
 int vmap (int ,int,int ,int ) ;

__attribute__((used)) static int gve_tx_fifo_init(struct gve_priv *priv, struct gve_tx_fifo *fifo)
{
 fifo->base = vmap(fifo->qpl->pages, fifo->qpl->num_entries, VM_MAP,
     PAGE_KERNEL);
 if (unlikely(!fifo->base)) {
  netif_err(priv, drv, priv->dev, "Failed to vmap fifo, qpl_id = %d\n",
     fifo->qpl->id);
  return -ENOMEM;
 }

 fifo->size = fifo->qpl->num_entries * PAGE_SIZE;
 atomic_set(&fifo->available, fifo->size);
 fifo->head = 0;
 return 0;
}
