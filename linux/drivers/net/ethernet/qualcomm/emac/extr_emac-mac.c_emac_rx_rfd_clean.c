
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {size_t count; size_t consume_idx; size_t process_idx; struct emac_buffer* rfbuff; } ;
struct emac_rx_queue {TYPE_1__ rfd; } ;
struct emac_rrd {int dummy; } ;
struct emac_buffer {int * skb; } ;


 unsigned int RRD_NOR (struct emac_rrd*) ;
 size_t RRD_SI (struct emac_rrd*) ;

__attribute__((used)) static void emac_rx_rfd_clean(struct emac_rx_queue *rx_q, struct emac_rrd *rrd)
{
 struct emac_buffer *rfbuf = rx_q->rfd.rfbuff;
 u32 consume_idx = RRD_SI(rrd);
 unsigned int i;

 for (i = 0; i < RRD_NOR(rrd); i++) {
  rfbuf[consume_idx].skb = ((void*)0);
  if (++consume_idx == rx_q->rfd.count)
   consume_idx = 0;
 }

 rx_q->rfd.consume_idx = consume_idx;
 rx_q->rfd.process_idx = consume_idx;
}
