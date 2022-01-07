
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct efx_rx_queue {int dummy; } ;
struct efx_rx_buffer {int flags; int len; } ;
struct efx_nic {int rx_packet_len_offset; int loopback_selftest; TYPE_1__* net_dev; } ;
struct efx_channel {int rx_pkt_n_frags; TYPE_2__* type; int rx_pkt_index; int rx_queue; struct efx_nic* efx; } ;
typedef int __le16 ;
struct TYPE_4__ {int receive_skb; } ;
struct TYPE_3__ {int features; } ;


 int EFX_RX_PKT_CSUMMED ;
 int EFX_RX_PKT_PREFIX_LEN ;
 int EFX_RX_PKT_TCP ;
 int NETIF_F_RXCSUM ;
 struct efx_rx_queue* efx_channel_get_rx_queue (struct efx_channel*) ;
 int efx_free_rx_buffers (struct efx_rx_queue*,struct efx_rx_buffer*,int ) ;
 int efx_loopback_rx_packet (struct efx_nic*,int *,int ) ;
 int * efx_rx_buf_va (struct efx_rx_buffer*) ;
 struct efx_rx_buffer* efx_rx_buffer (int *,int ) ;
 int efx_rx_deliver (struct efx_channel*,int *,struct efx_rx_buffer*,int ) ;
 int efx_rx_packet_gro (struct efx_channel*,struct efx_rx_buffer*,int ,int *) ;
 int le16_to_cpup (int *) ;
 scalar_t__ unlikely (int) ;

void __efx_rx_packet(struct efx_channel *channel)
{
 struct efx_nic *efx = channel->efx;
 struct efx_rx_buffer *rx_buf =
  efx_rx_buffer(&channel->rx_queue, channel->rx_pkt_index);
 u8 *eh = efx_rx_buf_va(rx_buf);




 if (rx_buf->flags & EFX_RX_PKT_PREFIX_LEN)
  rx_buf->len = le16_to_cpup((__le16 *)
        (eh + efx->rx_packet_len_offset));




 if (unlikely(efx->loopback_selftest)) {
  struct efx_rx_queue *rx_queue;

  efx_loopback_rx_packet(efx, eh, rx_buf->len);
  rx_queue = efx_channel_get_rx_queue(channel);
  efx_free_rx_buffers(rx_queue, rx_buf,
        channel->rx_pkt_n_frags);
  goto out;
 }

 if (unlikely(!(efx->net_dev->features & NETIF_F_RXCSUM)))
  rx_buf->flags &= ~EFX_RX_PKT_CSUMMED;

 if ((rx_buf->flags & EFX_RX_PKT_TCP) && !channel->type->receive_skb)
  efx_rx_packet_gro(channel, rx_buf, channel->rx_pkt_n_frags, eh);
 else
  efx_rx_deliver(channel, eh, rx_buf, channel->rx_pkt_n_frags);
out:
 channel->rx_pkt_n_frags = 0;
}
