
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int failure_frame; int status; int rate; } ;
struct il3945_beacon_notif {int ibss_mgr_status; int low_tsf; int high_tsf; TYPE_2__ beacon_notify_hdr; } ;
struct TYPE_3__ {struct il3945_beacon_notif beacon_status; } ;
struct il_rx_pkt {TYPE_1__ u; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {int ibss_manager; } ;


 int D_RX (char*,int,int ,int,int,int,int ) ;
 int TX_STATUS_MSK ;
 int le32_to_cpu (int ) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;

__attribute__((used)) static void
il3945_hdl_beacon(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 struct il3945_beacon_notif *beacon = &(pkt->u.beacon_status);
 il->ibss_manager = le32_to_cpu(beacon->ibss_mgr_status);

}
