
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tso_state {scalar_t__ in_len; scalar_t__ packet_space; scalar_t__ out_len; int dma_addr; scalar_t__ unmap_len; } ;
struct sk_buff {int dummy; } ;
struct efx_tx_queue {int dummy; } ;
struct efx_tx_buffer {scalar_t__ len; scalar_t__ unmap_len; scalar_t__ dma_offset; int flags; struct sk_buff const* skb; } ;


 int EFX_TX_BUF_CONT ;
 int EFX_TX_BUF_SKB ;
 int EFX_WARN_ON_ONCE_PARANOID (int) ;
 int efx_tx_queue_insert (struct efx_tx_queue*,int,int,struct efx_tx_buffer**) ;
 int min (scalar_t__,scalar_t__) ;

__attribute__((used)) static void tso_fill_packet_with_fragment(struct efx_tx_queue *tx_queue,
       const struct sk_buff *skb,
       struct tso_state *st)
{
 struct efx_tx_buffer *buffer;
 int n;

 if (st->in_len == 0)
  return;
 if (st->packet_space == 0)
  return;

 EFX_WARN_ON_ONCE_PARANOID(st->in_len <= 0);
 EFX_WARN_ON_ONCE_PARANOID(st->packet_space <= 0);

 n = min(st->in_len, st->packet_space);

 st->packet_space -= n;
 st->out_len -= n;
 st->in_len -= n;

 efx_tx_queue_insert(tx_queue, st->dma_addr, n, &buffer);

 if (st->out_len == 0) {

  buffer->skb = skb;
  buffer->flags = EFX_TX_BUF_SKB;
 } else if (st->packet_space != 0) {
  buffer->flags = EFX_TX_BUF_CONT;
 }

 if (st->in_len == 0) {

  buffer->unmap_len = st->unmap_len;
  buffer->dma_offset = buffer->unmap_len - buffer->len;
  st->unmap_len = 0;
 }

 st->dma_addr += n;
}
