
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_7__ {unsigned int produce_idx; unsigned int count; } ;
struct emac_tx_queue {TYPE_3__ tpd; } ;
struct emac_tpd {int dummy; } ;
struct emac_buffer {unsigned int length; void* dma_addr; struct sk_buff* skb; } ;
struct emac_adapter {TYPE_2__* netdev; } ;
typedef int skb_frag_t ;
struct TYPE_8__ {unsigned int nr_frags; int * frags; } ;
struct TYPE_5__ {int parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;


 int DMA_TO_DEVICE ;
 struct emac_buffer* GET_TPD_BUFFER (struct emac_tx_queue*,unsigned int) ;
 int TPD_BUFFER_ADDR_H_SET (struct emac_tpd*,int ) ;
 int TPD_BUFFER_ADDR_L_SET (struct emac_tpd*,int ) ;
 int TPD_BUF_LEN_SET (struct emac_tpd*,unsigned int) ;
 scalar_t__ TPD_LSO (struct emac_tpd*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 void* dma_map_page (int ,int ,int ,unsigned int,int ) ;
 int dma_mapping_error (int ,void*) ;
 int dma_unmap_page (int ,void*,unsigned int,int ) ;
 int emac_tx_tpd_create (struct emac_adapter*,struct emac_tx_queue*,struct emac_tpd*) ;
 int emac_tx_tpd_mark_last (struct emac_adapter*,struct emac_tx_queue*) ;
 int lower_32_bits (void*) ;
 int offset_in_page (scalar_t__) ;
 void* skb_frag_dma_map (int ,int *,int ,unsigned int,int ) ;
 unsigned int skb_frag_size (int *) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_4__* skb_shinfo (struct sk_buff*) ;
 unsigned int skb_transport_offset (struct sk_buff*) ;
 unsigned int tcp_hdrlen (struct sk_buff*) ;
 int upper_32_bits (void*) ;
 int virt_to_page (scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void emac_tx_fill_tpd(struct emac_adapter *adpt,
        struct emac_tx_queue *tx_q, struct sk_buff *skb,
        struct emac_tpd *tpd)
{
 unsigned int nr_frags = skb_shinfo(skb)->nr_frags;
 unsigned int first = tx_q->tpd.produce_idx;
 unsigned int len = skb_headlen(skb);
 struct emac_buffer *tpbuf = ((void*)0);
 unsigned int mapped_len = 0;
 unsigned int i;
 int count = 0;
 int ret;


 if (TPD_LSO(tpd)) {
  mapped_len = skb_transport_offset(skb) + tcp_hdrlen(skb);

  tpbuf = GET_TPD_BUFFER(tx_q, tx_q->tpd.produce_idx);
  tpbuf->length = mapped_len;
  tpbuf->dma_addr = dma_map_page(adpt->netdev->dev.parent,
            virt_to_page(skb->data),
            offset_in_page(skb->data),
            tpbuf->length,
            DMA_TO_DEVICE);
  ret = dma_mapping_error(adpt->netdev->dev.parent,
     tpbuf->dma_addr);
  if (ret)
   goto error;

  TPD_BUFFER_ADDR_L_SET(tpd, lower_32_bits(tpbuf->dma_addr));
  TPD_BUFFER_ADDR_H_SET(tpd, upper_32_bits(tpbuf->dma_addr));
  TPD_BUF_LEN_SET(tpd, tpbuf->length);
  emac_tx_tpd_create(adpt, tx_q, tpd);
  count++;
 }

 if (mapped_len < len) {
  tpbuf = GET_TPD_BUFFER(tx_q, tx_q->tpd.produce_idx);
  tpbuf->length = len - mapped_len;
  tpbuf->dma_addr = dma_map_page(adpt->netdev->dev.parent,
            virt_to_page(skb->data +
           mapped_len),
            offset_in_page(skb->data +
             mapped_len),
            tpbuf->length, DMA_TO_DEVICE);
  ret = dma_mapping_error(adpt->netdev->dev.parent,
     tpbuf->dma_addr);
  if (ret)
   goto error;

  TPD_BUFFER_ADDR_L_SET(tpd, lower_32_bits(tpbuf->dma_addr));
  TPD_BUFFER_ADDR_H_SET(tpd, upper_32_bits(tpbuf->dma_addr));
  TPD_BUF_LEN_SET(tpd, tpbuf->length);
  emac_tx_tpd_create(adpt, tx_q, tpd);
  count++;
 }

 for (i = 0; i < nr_frags; i++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

  tpbuf = GET_TPD_BUFFER(tx_q, tx_q->tpd.produce_idx);
  tpbuf->length = skb_frag_size(frag);
  tpbuf->dma_addr = skb_frag_dma_map(adpt->netdev->dev.parent,
         frag, 0, tpbuf->length,
         DMA_TO_DEVICE);
  ret = dma_mapping_error(adpt->netdev->dev.parent,
     tpbuf->dma_addr);
  if (ret)
   goto error;

  TPD_BUFFER_ADDR_L_SET(tpd, lower_32_bits(tpbuf->dma_addr));
  TPD_BUFFER_ADDR_H_SET(tpd, upper_32_bits(tpbuf->dma_addr));
  TPD_BUF_LEN_SET(tpd, tpbuf->length);
  emac_tx_tpd_create(adpt, tx_q, tpd);
  count++;
 }


 wmb();
 emac_tx_tpd_mark_last(adpt, tx_q);




 tpbuf->skb = skb;

 return;

error:

 tx_q->tpd.produce_idx = first;

 while (count--) {
  tpbuf = GET_TPD_BUFFER(tx_q, first);
  dma_unmap_page(adpt->netdev->dev.parent, tpbuf->dma_addr,
          tpbuf->length, DMA_TO_DEVICE);
  tpbuf->dma_addr = 0;
  tpbuf->length = 0;

  if (++first == tx_q->tpd.count)
   first = 0;
 }

 dev_kfree_skb(skb);
}
