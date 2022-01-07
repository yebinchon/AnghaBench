
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ id; int dma_addr; } ;
struct il_tx_queue {int * skbs; TYPE_3__ q; int tfds; } ;
struct TYPE_5__ {size_t tfd_size; } ;
struct il_priv {scalar_t__ cmd_queue; TYPE_2__ hw_params; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IL_ERR (char*) ;
 size_t TFD_QUEUE_SIZE_MAX ;
 int dma_alloc_coherent (struct device*,size_t,int *,int ) ;
 int * kcalloc (size_t,int,int ) ;
 int kfree (int *) ;

__attribute__((used)) static int
il_tx_queue_alloc(struct il_priv *il, struct il_tx_queue *txq, u32 id)
{
 struct device *dev = &il->pci_dev->dev;
 size_t tfd_sz = il->hw_params.tfd_size * TFD_QUEUE_SIZE_MAX;



 if (id != il->cmd_queue) {
  txq->skbs = kcalloc(TFD_QUEUE_SIZE_MAX,
        sizeof(struct sk_buff *),
        GFP_KERNEL);
  if (!txq->skbs) {
   IL_ERR("Fail to alloc skbs\n");
   goto error;
  }
 } else
  txq->skbs = ((void*)0);



 txq->tfds =
     dma_alloc_coherent(dev, tfd_sz, &txq->q.dma_addr, GFP_KERNEL);
 if (!txq->tfds)
  goto error;

 txq->q.id = id;

 return 0;

error:
 kfree(txq->skbs);
 txq->skbs = ((void*)0);

 return -ENOMEM;
}
