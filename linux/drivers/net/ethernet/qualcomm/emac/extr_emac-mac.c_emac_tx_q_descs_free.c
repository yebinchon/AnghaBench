
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int count; size_t size; scalar_t__ produce_idx; scalar_t__ consume_idx; int v_addr; int tpbuff; } ;
struct emac_tx_queue {TYPE_3__ tpd; } ;
struct emac_buffer {int * skb; scalar_t__ dma_addr; int length; } ;
struct emac_adapter {TYPE_2__* netdev; struct emac_tx_queue tx_q; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int DMA_TO_DEVICE ;
 struct emac_buffer* GET_TPD_BUFFER (struct emac_tx_queue*,unsigned int) ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int memset (int ,int ,size_t) ;

__attribute__((used)) static void emac_tx_q_descs_free(struct emac_adapter *adpt)
{
 struct emac_tx_queue *tx_q = &adpt->tx_q;
 unsigned int i;
 size_t size;


 if (!tx_q->tpd.tpbuff)
  return;

 for (i = 0; i < tx_q->tpd.count; i++) {
  struct emac_buffer *tpbuf = GET_TPD_BUFFER(tx_q, i);

  if (tpbuf->dma_addr) {
   dma_unmap_single(adpt->netdev->dev.parent,
      tpbuf->dma_addr, tpbuf->length,
      DMA_TO_DEVICE);
   tpbuf->dma_addr = 0;
  }
  if (tpbuf->skb) {
   dev_kfree_skb_any(tpbuf->skb);
   tpbuf->skb = ((void*)0);
  }
 }

 size = sizeof(struct emac_buffer) * tx_q->tpd.count;
 memset(tx_q->tpd.tpbuff, 0, size);


 memset(tx_q->tpd.v_addr, 0, tx_q->tpd.size);

 tx_q->tpd.consume_idx = 0;
 tx_q->tpd.produce_idx = 0;
}
