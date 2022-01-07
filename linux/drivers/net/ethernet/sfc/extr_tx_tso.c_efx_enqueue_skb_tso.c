
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tso_state {scalar_t__ in_len; scalar_t__ packet_space; scalar_t__ header_unmap_len; int header_dma_addr; scalar_t__ unmap_len; int unmap_addr; int protocol; } ;
struct sk_buff {int data; } ;
struct efx_tx_queue {int tso_version; scalar_t__ write_count; scalar_t__ insert_count; struct efx_nic* efx; } ;
struct efx_nic {TYPE_1__* pci_dev; int net_dev; } ;
struct TYPE_4__ {int nr_frags; scalar_t__ frags; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int EFX_WARN_ON_ONCE_PARANOID (int) ;
 int EINVAL ;
 int ENOMEM ;
 int dma_unmap_page (int *,int ,scalar_t__,int ) ;
 int dma_unmap_single (int *,int ,scalar_t__,int ) ;
 int efx_tso_check_protocol (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int netif_err (struct efx_nic*,int ,int ,char*,...) ;
 int prefetch (int ) ;
 int prefetch_ptr (struct efx_tx_queue*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int tso_fill_packet_with_fragment (struct efx_tx_queue*,struct sk_buff*,struct tso_state*) ;
 int tso_get_fragment (struct tso_state*,struct efx_nic*,scalar_t__) ;
 int tso_start (struct tso_state*,struct efx_nic*,struct efx_tx_queue*,struct sk_buff*) ;
 int tso_start_new_packet (struct efx_tx_queue*,struct sk_buff*,struct tso_state*) ;
 int tx_err ;

int efx_enqueue_skb_tso(struct efx_tx_queue *tx_queue,
   struct sk_buff *skb,
   bool *data_mapped)
{
 struct efx_nic *efx = tx_queue->efx;
 int frag_i, rc;
 struct tso_state state;

 if (tx_queue->tso_version != 1)
  return -EINVAL;

 prefetch(skb->data);


 state.protocol = efx_tso_check_protocol(skb);

 EFX_WARN_ON_ONCE_PARANOID(tx_queue->write_count != tx_queue->insert_count);

 rc = tso_start(&state, efx, tx_queue, skb);
 if (rc)
  goto fail;

 if (likely(state.in_len == 0)) {

  EFX_WARN_ON_ONCE_PARANOID(skb_shinfo(skb)->nr_frags < 1);
  frag_i = 0;
  rc = tso_get_fragment(&state, efx,
          skb_shinfo(skb)->frags + frag_i);
  if (rc)
   goto fail;
 } else {

  frag_i = -1;
 }

 rc = tso_start_new_packet(tx_queue, skb, &state);
 if (rc)
  goto fail;

 prefetch_ptr(tx_queue);

 while (1) {
  tso_fill_packet_with_fragment(tx_queue, skb, &state);


  if (state.in_len == 0) {
   if (++frag_i >= skb_shinfo(skb)->nr_frags)

    break;
   rc = tso_get_fragment(&state, efx,
           skb_shinfo(skb)->frags + frag_i);
   if (rc)
    goto fail;
  }


  if (state.packet_space == 0) {
   rc = tso_start_new_packet(tx_queue, skb, &state);
   if (rc)
    goto fail;
  }
 }

 *data_mapped = 1;

 return 0;

fail:
 if (rc == -ENOMEM)
  netif_err(efx, tx_err, efx->net_dev,
     "Out of memory for TSO headers, or DMA mapping error\n");
 else
  netif_err(efx, tx_err, efx->net_dev, "TSO failed, rc = %d\n", rc);


 if (state.unmap_len) {
  dma_unmap_page(&efx->pci_dev->dev, state.unmap_addr,
          state.unmap_len, DMA_TO_DEVICE);
 }


 if (state.header_unmap_len)
  dma_unmap_single(&efx->pci_dev->dev, state.header_dma_addr,
     state.header_unmap_len, DMA_TO_DEVICE);

 return rc;
}
