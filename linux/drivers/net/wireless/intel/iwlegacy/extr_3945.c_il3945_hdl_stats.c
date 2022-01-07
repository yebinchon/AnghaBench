
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int raw; } ;
struct il_rx_pkt {TYPE_2__ u; int len_n_flags; } ;
struct il_rx_buf {int dummy; } ;
struct TYPE_3__ {int stats; } ;
struct il_priv {TYPE_1__ _3945; } ;
struct il3945_notif_stats {int dummy; } ;
typedef int __le32 ;


 int D_RX (char*,int,int) ;
 int IL_RX_FRAME_SIZE_MSK ;
 int il3945_accumulative_stats (struct il_priv*,int *) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int ,int) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;

void
il3945_hdl_stats(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);

 D_RX("Statistics notification received (%d vs %d).\n",
      (int)sizeof(struct il3945_notif_stats),
      le32_to_cpu(pkt->len_n_flags) & IL_RX_FRAME_SIZE_MSK);




 memcpy(&il->_3945.stats, pkt->u.raw, sizeof(il->_3945.stats));
}
