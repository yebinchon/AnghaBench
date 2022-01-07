
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int raw; } ;
struct il_rx_pkt {TYPE_2__ u; } ;
struct il_rx_buf {int dummy; } ;
struct TYPE_3__ {int max_delta; int delta_stats; int accum_stats; } ;
struct il_priv {TYPE_1__ _3945; } ;
struct il3945_notif_stats {int dummy; } ;
typedef int __le32 ;


 int D_RX (char*) ;
 int UCODE_STATS_CLEAR_MSK ;
 int il3945_hdl_stats (struct il_priv*,struct il_rx_buf*) ;
 int le32_to_cpu (int ) ;
 int memset (int *,int ,int) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;

void
il3945_hdl_c_stats(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 __le32 *flag = (__le32 *) &pkt->u.raw;

 if (le32_to_cpu(*flag) & UCODE_STATS_CLEAR_MSK) {
  D_RX("Statistics have been cleared\n");
 }
 il3945_hdl_stats(il, rxb);
}
