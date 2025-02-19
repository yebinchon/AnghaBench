
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned int count; size_t size; scalar_t__ consume_idx; scalar_t__ produce_idx; int v_addr; int rfbuff; } ;
struct TYPE_7__ {size_t size; scalar_t__ consume_idx; scalar_t__ produce_idx; int v_addr; } ;
struct emac_rx_queue {TYPE_4__ rfd; TYPE_3__ rrd; } ;
struct emac_buffer {int * skb; scalar_t__ dma_addr; int length; } ;
struct emac_adapter {struct emac_rx_queue rx_q; TYPE_2__* netdev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device* parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;


 int DMA_FROM_DEVICE ;
 struct emac_buffer* GET_RFD_BUFFER (struct emac_rx_queue*,unsigned int) ;
 int dev_kfree_skb (int *) ;
 int dma_unmap_single (struct device*,scalar_t__,int ,int ) ;
 int memset (int ,int ,size_t) ;

__attribute__((used)) static void emac_rx_q_free_descs(struct emac_adapter *adpt)
{
 struct device *dev = adpt->netdev->dev.parent;
 struct emac_rx_queue *rx_q = &adpt->rx_q;
 unsigned int i;
 size_t size;


 if (!rx_q->rfd.rfbuff)
  return;

 for (i = 0; i < rx_q->rfd.count; i++) {
  struct emac_buffer *rfbuf = GET_RFD_BUFFER(rx_q, i);

  if (rfbuf->dma_addr) {
   dma_unmap_single(dev, rfbuf->dma_addr, rfbuf->length,
      DMA_FROM_DEVICE);
   rfbuf->dma_addr = 0;
  }
  if (rfbuf->skb) {
   dev_kfree_skb(rfbuf->skb);
   rfbuf->skb = ((void*)0);
  }
 }

 size = sizeof(struct emac_buffer) * rx_q->rfd.count;
 memset(rx_q->rfd.rfbuff, 0, size);


 memset(rx_q->rrd.v_addr, 0, rx_q->rrd.size);
 rx_q->rrd.produce_idx = 0;
 rx_q->rrd.consume_idx = 0;

 memset(rx_q->rfd.v_addr, 0, rx_q->rfd.size);
 rx_q->rfd.produce_idx = 0;
 rx_q->rfd.consume_idx = 0;
}
