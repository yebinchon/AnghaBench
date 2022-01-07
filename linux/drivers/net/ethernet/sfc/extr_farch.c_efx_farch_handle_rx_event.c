
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct efx_rx_queue {unsigned int removed_count; unsigned int scatter_n; unsigned int ptr_mask; } ;
struct efx_nic {int reset_pending; } ;
struct efx_channel {void* channel; int irq_mod_score; int n_rx_mcast_mismatch; struct efx_nic* efx; } ;
typedef int efx_qword_t ;


 void* EFX_QWORD_FIELD (int const,int ) ;
 int EFX_RX_PKT_CSUMMED ;
 int EFX_RX_PKT_DISCARD ;
 int EFX_RX_PKT_TCP ;




 int FSF_AZ_RX_EV_BYTE_CNT ;
 int FSF_AZ_RX_EV_DESC_PTR ;
 int FSF_AZ_RX_EV_HDR_TYPE ;
 int FSF_AZ_RX_EV_JUMBO_CONT ;
 int FSF_AZ_RX_EV_MCAST_HASH_MATCH ;
 int FSF_AZ_RX_EV_MCAST_PKT ;
 int FSF_AZ_RX_EV_PKT_OK ;
 int FSF_AZ_RX_EV_Q_LABEL ;
 int FSF_AZ_RX_EV_SOP ;
 int READ_ONCE (int ) ;
 int WARN_ON (int) ;
 struct efx_rx_queue* efx_channel_get_rx_queue (struct efx_channel*) ;
 int efx_farch_handle_rx_bad_index (struct efx_rx_queue*,unsigned int) ;
 int efx_farch_handle_rx_not_ok (struct efx_rx_queue*,int const*) ;
 int efx_rx_packet (struct efx_rx_queue*,int,int,unsigned int,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
efx_farch_handle_rx_event(struct efx_channel *channel, const efx_qword_t *event)
{
 unsigned int rx_ev_desc_ptr, rx_ev_byte_cnt;
 unsigned int rx_ev_hdr_type, rx_ev_mcast_pkt;
 unsigned expected_ptr;
 bool rx_ev_pkt_ok, rx_ev_sop, rx_ev_cont;
 u16 flags;
 struct efx_rx_queue *rx_queue;
 struct efx_nic *efx = channel->efx;

 if (unlikely(READ_ONCE(efx->reset_pending)))
  return;

 rx_ev_cont = EFX_QWORD_FIELD(*event, FSF_AZ_RX_EV_JUMBO_CONT);
 rx_ev_sop = EFX_QWORD_FIELD(*event, FSF_AZ_RX_EV_SOP);
 WARN_ON(EFX_QWORD_FIELD(*event, FSF_AZ_RX_EV_Q_LABEL) !=
  channel->channel);

 rx_queue = efx_channel_get_rx_queue(channel);

 rx_ev_desc_ptr = EFX_QWORD_FIELD(*event, FSF_AZ_RX_EV_DESC_PTR);
 expected_ptr = ((rx_queue->removed_count + rx_queue->scatter_n) &
   rx_queue->ptr_mask);


 if (unlikely(rx_ev_desc_ptr != expected_ptr) ||
     unlikely(rx_ev_sop != (rx_queue->scatter_n == 0))) {
  if (rx_ev_desc_ptr != expected_ptr &&
      !efx_farch_handle_rx_bad_index(rx_queue, rx_ev_desc_ptr))
   return;


  if (rx_queue->scatter_n) {
   efx_rx_packet(
    rx_queue,
    rx_queue->removed_count & rx_queue->ptr_mask,
    rx_queue->scatter_n, 0, EFX_RX_PKT_DISCARD);
   rx_queue->removed_count += rx_queue->scatter_n;
   rx_queue->scatter_n = 0;
  }


  if (rx_ev_desc_ptr != expected_ptr)
   return;


  if (!rx_ev_sop) {
   efx_rx_packet(
    rx_queue,
    rx_queue->removed_count & rx_queue->ptr_mask,
    1, 0, EFX_RX_PKT_DISCARD);
   ++rx_queue->removed_count;
   return;
  }
 }

 ++rx_queue->scatter_n;
 if (rx_ev_cont)
  return;

 rx_ev_byte_cnt = EFX_QWORD_FIELD(*event, FSF_AZ_RX_EV_BYTE_CNT);
 rx_ev_pkt_ok = EFX_QWORD_FIELD(*event, FSF_AZ_RX_EV_PKT_OK);
 rx_ev_hdr_type = EFX_QWORD_FIELD(*event, FSF_AZ_RX_EV_HDR_TYPE);

 if (likely(rx_ev_pkt_ok)) {



  flags = 0;
  switch (rx_ev_hdr_type) {
  case 129:
   flags |= EFX_RX_PKT_TCP;

  case 128:
   flags |= EFX_RX_PKT_CSUMMED;

  case 130:
  case 131:
   break;
  }
 } else {
  flags = efx_farch_handle_rx_not_ok(rx_queue, event);
 }


 rx_ev_mcast_pkt = EFX_QWORD_FIELD(*event, FSF_AZ_RX_EV_MCAST_PKT);
 if (rx_ev_mcast_pkt) {
  unsigned int rx_ev_mcast_hash_match =
   EFX_QWORD_FIELD(*event, FSF_AZ_RX_EV_MCAST_HASH_MATCH);

  if (unlikely(!rx_ev_mcast_hash_match)) {
   ++channel->n_rx_mcast_mismatch;
   flags |= EFX_RX_PKT_DISCARD;
  }
 }

 channel->irq_mod_score += 2;


 efx_rx_packet(rx_queue,
        rx_queue->removed_count & rx_queue->ptr_mask,
        rx_queue->scatter_n, rx_ev_byte_cnt, flags);
 rx_queue->removed_count += rx_queue->scatter_n;
 rx_queue->scatter_n = 0;
}
