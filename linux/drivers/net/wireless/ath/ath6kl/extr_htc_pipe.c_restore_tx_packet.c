
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct htc_packet {TYPE_2__ info; int skb; } ;
struct htc_frame_hdr {int dummy; } ;


 int HTC_FLAGS_TX_FIXUP_NETBUF ;
 int skb_pull (int ,int) ;

__attribute__((used)) static inline void restore_tx_packet(struct htc_packet *packet)
{
 if (packet->info.tx.flags & HTC_FLAGS_TX_FIXUP_NETBUF) {
  skb_pull(packet->skb, sizeof(struct htc_frame_hdr));
  packet->info.tx.flags &= ~HTC_FLAGS_TX_FIXUP_NETBUF;
 }
}
