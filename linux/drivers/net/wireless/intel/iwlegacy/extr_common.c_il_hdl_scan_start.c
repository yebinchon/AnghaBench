
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_scanstart_notification {int beacon_timer; int status; int tsf_low; int tsf_high; scalar_t__ band; int channel; } ;
struct TYPE_2__ {scalar_t__ raw; } ;
struct il_rx_pkt {TYPE_1__ u; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {int scan_start_tsf; } ;


 int D_SCAN (char*,int ,char*,int ,int ,int ,int ) ;
 int le32_to_cpu (int ) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;

__attribute__((used)) static void
il_hdl_scan_start(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 struct il_scanstart_notification *notif =
     (struct il_scanstart_notification *)pkt->u.raw;
 il->scan_start_tsf = le32_to_cpu(notif->tsf_low);
 D_SCAN("Scan start: " "%d [802.11%s] "
        "(TSF: 0x%08X:%08X) - %d (beacon timer %u)\n", notif->channel,
        notif->band ? "bg" : "a", le32_to_cpu(notif->tsf_high),
        le32_to_cpu(notif->tsf_low), notif->status, notif->beacon_timer);
}
