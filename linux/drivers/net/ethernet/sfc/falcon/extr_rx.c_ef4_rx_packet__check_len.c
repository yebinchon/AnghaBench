
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ef4_rx_queue {struct ef4_nic* efx; } ;
struct ef4_rx_buffer {int len; int flags; } ;
struct ef4_nic {int net_dev; TYPE_1__* type; } ;
struct TYPE_4__ {int n_rx_overlength; } ;
struct TYPE_3__ {unsigned int rx_buffer_padding; } ;


 int EF4_RX_PKT_DISCARD ;
 scalar_t__ EF4_WORKAROUND_8071 (struct ef4_nic*) ;
 int RESET_TYPE_RX_RECOVERY ;
 TYPE_2__* ef4_rx_queue_channel (struct ef4_rx_queue*) ;
 int ef4_rx_queue_index (struct ef4_rx_queue*) ;
 int ef4_schedule_reset (struct ef4_nic*,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ net_ratelimit () ;
 int netif_err (struct ef4_nic*,int ,int ,char*,int ,int,unsigned int,...) ;
 int rx_err ;

__attribute__((used)) static void ef4_rx_packet__check_len(struct ef4_rx_queue *rx_queue,
         struct ef4_rx_buffer *rx_buf,
         int len)
{
 struct ef4_nic *efx = rx_queue->efx;
 unsigned max_len = rx_buf->len - efx->type->rx_buffer_padding;

 if (likely(len <= max_len))
  return;




 rx_buf->flags |= EF4_RX_PKT_DISCARD;

 if ((len > rx_buf->len) && EF4_WORKAROUND_8071(efx)) {
  if (net_ratelimit())
   netif_err(efx, rx_err, efx->net_dev,
      " RX queue %d seriously overlength "
      "RX event (0x%x > 0x%x+0x%x). Leaking\n",
      ef4_rx_queue_index(rx_queue), len, max_len,
      efx->type->rx_buffer_padding);
  ef4_schedule_reset(efx, RESET_TYPE_RX_RECOVERY);
 } else {
  if (net_ratelimit())
   netif_err(efx, rx_err, efx->net_dev,
      " RX queue %d overlength RX event "
      "(0x%x > 0x%x)\n",
      ef4_rx_queue_index(rx_queue), len, max_len);
 }

 ef4_rx_queue_channel(rx_queue)->n_rx_overlength++;
}
