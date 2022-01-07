
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sequence; scalar_t__ cmd; } ;
struct il_rx_pkt {TYPE_1__ hdr; } ;
struct il_priv {int dummy; } ;


 scalar_t__ C_TX ;
 scalar_t__ N_COMPRESSED_BA ;
 scalar_t__ N_RX ;
 scalar_t__ N_RX_MPDU ;
 scalar_t__ N_RX_PHY ;
 scalar_t__ N_STATS ;
 int SEQ_RX_FRAME ;

__attribute__((used)) static inline bool il_need_reclaim(struct il_priv *il, struct il_rx_pkt *pkt)
{






 return !(pkt->hdr.sequence & SEQ_RX_FRAME) &&
        pkt->hdr.cmd != N_STATS && pkt->hdr.cmd != C_TX &&
        pkt->hdr.cmd != N_RX_PHY && pkt->hdr.cmd != N_RX &&
        pkt->hdr.cmd != N_RX_MPDU && pkt->hdr.cmd != N_COMPRESSED_BA;
}
