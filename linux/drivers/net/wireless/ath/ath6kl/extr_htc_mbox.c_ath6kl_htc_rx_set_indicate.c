
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int indicat_flags; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct htc_packet {scalar_t__ endpoint; TYPE_2__ info; } ;
struct htc_frame_hdr {scalar_t__ eid; } ;
struct htc_endpoint {int rx_bufq; } ;


 int HTC_RX_FLAGS_INDICATE_MORE_PKTS ;
 int list_empty (int *) ;

__attribute__((used)) static void ath6kl_htc_rx_set_indicate(u32 lk_ahd,
           struct htc_endpoint *endpoint,
           struct htc_packet *packet)
{
 struct htc_frame_hdr *htc_hdr = (struct htc_frame_hdr *)&lk_ahd;

 if (htc_hdr->eid == packet->endpoint) {
  if (!list_empty(&endpoint->rx_bufq))
   packet->info.rx.indicat_flags |=
     HTC_RX_FLAGS_INDICATE_MORE_PKTS;
 }
}
