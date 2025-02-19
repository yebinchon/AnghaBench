
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int status_error_len; } ;
struct TYPE_6__ {TYPE_1__ qword1; } ;
union i40e_rx_desc {TYPE_2__ wb; } ;
typedef unsigned int u64 ;
typedef int u16 ;
struct xdp_buff {int handle; int * data; scalar_t__ data_end; int * data_hard_start; int * data_meta; int * rxq; } ;
struct sk_buff {scalar_t__ len; } ;
struct i40e_rx_buffer {int * addr; int handle; } ;
struct TYPE_7__ {int alloc_buff_failed; } ;
struct i40e_ring {scalar_t__ next_to_clean; scalar_t__ next_to_use; int xsk_umem; TYPE_4__* q_vector; TYPE_3__ rx_stats; int xdp_rxq; } ;
struct TYPE_8__ {int napi; } ;


 int I40E_DESC_UNUSED (struct i40e_ring*) ;
 unsigned int I40E_RXD_QW1_LENGTH_PBUF_MASK ;
 unsigned int I40E_RXD_QW1_LENGTH_PBUF_SHIFT ;
 int I40E_RX_BUFFER_WRITE ;
 union i40e_rx_desc* I40E_RX_DESC (struct i40e_ring*,scalar_t__) ;
 unsigned int I40E_XDP_REDIR ;
 unsigned int I40E_XDP_TX ;
 int * XDP_PACKET_HEADROOM ;
 int dma_rmb () ;
 scalar_t__ eth_skb_pad (struct sk_buff*) ;
 int i40e_alloc_rx_buffers_fast_zc (struct i40e_ring*,int ) ;
 struct i40e_rx_buffer* i40e_clean_programming_status (struct i40e_ring*,union i40e_rx_desc*,unsigned int) ;
 struct sk_buff* i40e_construct_skb_zc (struct i40e_ring*,struct i40e_rx_buffer*,struct xdp_buff*) ;
 int i40e_finalize_xdp_rx (struct i40e_ring*,unsigned int) ;
 struct i40e_rx_buffer* i40e_get_rx_buffer_zc (struct i40e_ring*,unsigned int) ;
 int i40e_inc_ntc (struct i40e_ring*) ;
 int i40e_process_skb_fields (struct i40e_ring*,union i40e_rx_desc*,struct sk_buff*) ;
 int i40e_reuse_rx_buffer_zc (struct i40e_ring*,struct i40e_rx_buffer*) ;
 unsigned int i40e_run_xdp_zc (struct i40e_ring*,struct xdp_buff*) ;
 int i40e_update_rx_stats (struct i40e_ring*,unsigned int,unsigned int) ;
 unsigned int le64_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 scalar_t__ unlikely (struct i40e_rx_buffer*) ;
 int xsk_clear_rx_need_wakeup (int ) ;
 int xsk_set_rx_need_wakeup (int ) ;
 scalar_t__ xsk_umem_uses_need_wakeup (int ) ;

int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
{
 unsigned int total_rx_bytes = 0, total_rx_packets = 0;
 u16 cleaned_count = I40E_DESC_UNUSED(rx_ring);
 unsigned int xdp_res, xdp_xmit = 0;
 bool failure = 0;
 struct sk_buff *skb;
 struct xdp_buff xdp;

 xdp.rxq = &rx_ring->xdp_rxq;

 while (likely(total_rx_packets < (unsigned int)budget)) {
  struct i40e_rx_buffer *bi;
  union i40e_rx_desc *rx_desc;
  unsigned int size;
  u64 qword;

  if (cleaned_count >= I40E_RX_BUFFER_WRITE) {
   failure = failure ||
      !i40e_alloc_rx_buffers_fast_zc(rx_ring,
         cleaned_count);
   cleaned_count = 0;
  }

  rx_desc = I40E_RX_DESC(rx_ring, rx_ring->next_to_clean);
  qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);





  dma_rmb();

  bi = i40e_clean_programming_status(rx_ring, rx_desc,
         qword);
  if (unlikely(bi)) {
   i40e_reuse_rx_buffer_zc(rx_ring, bi);
   cleaned_count++;
   continue;
  }

  size = (qword & I40E_RXD_QW1_LENGTH_PBUF_MASK) >>
         I40E_RXD_QW1_LENGTH_PBUF_SHIFT;
  if (!size)
   break;

  bi = i40e_get_rx_buffer_zc(rx_ring, size);
  xdp.data = bi->addr;
  xdp.data_meta = xdp.data;
  xdp.data_hard_start = xdp.data - XDP_PACKET_HEADROOM;
  xdp.data_end = xdp.data + size;
  xdp.handle = bi->handle;

  xdp_res = i40e_run_xdp_zc(rx_ring, &xdp);
  if (xdp_res) {
   if (xdp_res & (I40E_XDP_TX | I40E_XDP_REDIR)) {
    xdp_xmit |= xdp_res;
    bi->addr = ((void*)0);
   } else {
    i40e_reuse_rx_buffer_zc(rx_ring, bi);
   }

   total_rx_bytes += size;
   total_rx_packets++;

   cleaned_count++;
   i40e_inc_ntc(rx_ring);
   continue;
  }
  skb = i40e_construct_skb_zc(rx_ring, bi, &xdp);
  if (!skb) {
   rx_ring->rx_stats.alloc_buff_failed++;
   break;
  }

  cleaned_count++;
  i40e_inc_ntc(rx_ring);

  if (eth_skb_pad(skb))
   continue;

  total_rx_bytes += skb->len;
  total_rx_packets++;

  i40e_process_skb_fields(rx_ring, rx_desc, skb);
  napi_gro_receive(&rx_ring->q_vector->napi, skb);
 }

 i40e_finalize_xdp_rx(rx_ring, xdp_xmit);
 i40e_update_rx_stats(rx_ring, total_rx_bytes, total_rx_packets);

 if (xsk_umem_uses_need_wakeup(rx_ring->xsk_umem)) {
  if (failure || rx_ring->next_to_clean == rx_ring->next_to_use)
   xsk_set_rx_need_wakeup(rx_ring->xsk_umem);
  else
   xsk_clear_rx_need_wakeup(rx_ring->xsk_umem);

  return (int)total_rx_packets;
 }
 return failure ? budget : (int)total_rx_packets;
}
