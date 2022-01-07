
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct htc_target {int dummy; } ;
struct TYPE_4__ {int rx_flags; } ;
struct TYPE_5__ {TYPE_1__ rx; } ;
struct htc_packet {int status; TYPE_2__ info; } ;
struct TYPE_6__ {int (* rx ) (int ,struct htc_packet*) ;} ;
struct htc_endpoint {int target; TYPE_3__ ep_cb; } ;


 int ECANCELED ;
 int HTC_RX_PKT_NO_RECYCLE ;
 int htc_add_rxbuf (void*,struct htc_packet*) ;
 int htc_rxpkt_reset (struct htc_packet*) ;
 int stub1 (int ,struct htc_packet*) ;

__attribute__((used)) static void htc_reclaim_rxbuf(struct htc_target *target,
         struct htc_packet *packet,
         struct htc_endpoint *ep)
{
 if (packet->info.rx.rx_flags & HTC_RX_PKT_NO_RECYCLE) {
  htc_rxpkt_reset(packet);
  packet->status = -ECANCELED;
  ep->ep_cb.rx(ep->target, packet);
 } else {
  htc_rxpkt_reset(packet);
  htc_add_rxbuf((void *)(target), packet);
 }
}
