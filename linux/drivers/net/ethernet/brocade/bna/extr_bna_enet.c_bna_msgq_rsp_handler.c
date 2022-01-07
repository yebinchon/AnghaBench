
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_tx {int dummy; } ;
struct bna_rx {int rxf; } ;
struct bna {int tx_mod; int ethport; int ioceth; int enet; } ;
struct bfi_msgq_mhdr {int msg_id; int enet_id; } ;
 int bna_bfi_attr_get_rsp (int *,struct bfi_msgq_mhdr*) ;
 int bna_bfi_bw_update_aen (int *) ;
 int bna_bfi_ethport_admin_rsp (int *,struct bfi_msgq_mhdr*) ;
 int bna_bfi_ethport_disable_aen (int *,struct bfi_msgq_mhdr*) ;
 int bna_bfi_ethport_enable_aen (int *,struct bfi_msgq_mhdr*) ;
 int bna_bfi_ethport_linkdown_aen (int *,struct bfi_msgq_mhdr*) ;
 int bna_bfi_ethport_linkup_aen (int *,struct bfi_msgq_mhdr*) ;
 int bna_bfi_ethport_lpbk_rsp (int *,struct bfi_msgq_mhdr*) ;
 int bna_bfi_pause_set_rsp (int *,struct bfi_msgq_mhdr*) ;
 int bna_bfi_rx_enet_start_rsp (struct bna_rx*,struct bfi_msgq_mhdr*) ;
 int bna_bfi_rx_enet_stop_rsp (struct bna_rx*,struct bfi_msgq_mhdr*) ;
 int bna_bfi_rxf_cfg_rsp (int *,struct bfi_msgq_mhdr*) ;
 int bna_bfi_rxf_mcast_add_rsp (int *,struct bfi_msgq_mhdr*) ;
 int bna_bfi_rxf_ucast_set_rsp (int *,struct bfi_msgq_mhdr*) ;
 int bna_bfi_stats_get_rsp (struct bna*,struct bfi_msgq_mhdr*) ;
 int bna_bfi_tx_enet_start_rsp (struct bna_tx*,struct bfi_msgq_mhdr*) ;
 int bna_bfi_tx_enet_stop_rsp (struct bna_tx*,struct bfi_msgq_mhdr*) ;
 int bna_rx_from_rid (struct bna*,int ,struct bna_rx*) ;
 int bna_tx_from_rid (struct bna*,int ,struct bna_tx*) ;

__attribute__((used)) static void
bna_msgq_rsp_handler(void *arg, struct bfi_msgq_mhdr *msghdr)
{
 struct bna *bna = (struct bna *)arg;
 struct bna_tx *tx;
 struct bna_rx *rx;

 switch (msghdr->msg_id) {
 case 137:
  bna_rx_from_rid(bna, msghdr->enet_id, rx);
  if (rx)
   bna_bfi_rx_enet_start_rsp(rx, msghdr);
  break;

 case 138:
  bna_rx_from_rid(bna, msghdr->enet_id, rx);
  if (rx)
   bna_bfi_rx_enet_stop_rsp(rx, msghdr);
  break;

 case 141:
 case 140:
 case 139:
 case 135:
 case 136:
 case 147:
 case 148:
 case 146:
 case 150:
 case 149:
 case 134:
 case 133:
  bna_rx_from_rid(bna, msghdr->enet_id, rx);
  if (rx)
   bna_bfi_rxf_cfg_rsp(&rx->rxf, msghdr);
  break;

 case 145:
  bna_rx_from_rid(bna, msghdr->enet_id, rx);
  if (rx)
   bna_bfi_rxf_ucast_set_rsp(&rx->rxf, msghdr);
  break;

 case 151:
  bna_rx_from_rid(bna, msghdr->enet_id, rx);
  if (rx)
   bna_bfi_rxf_mcast_add_rsp(&rx->rxf, msghdr);
  break;

 case 128:
  bna_tx_from_rid(bna, msghdr->enet_id, tx);
  if (tx)
   bna_bfi_tx_enet_start_rsp(tx, msghdr);
  break;

 case 129:
  bna_tx_from_rid(bna, msghdr->enet_id, tx);
  if (tx)
   bna_bfi_tx_enet_stop_rsp(tx, msghdr);
  break;

 case 144:
  bna_bfi_ethport_admin_rsp(&bna->ethport, msghdr);
  break;

 case 155:
  bna_bfi_ethport_lpbk_rsp(&bna->ethport, msghdr);
  break;

 case 132:
  bna_bfi_pause_set_rsp(&bna->enet, msghdr);
  break;

 case 154:
  bna_bfi_attr_get_rsp(&bna->ioceth, msghdr);
  break;

 case 130:
  bna_bfi_stats_get_rsp(bna, msghdr);
  break;

 case 131:

  break;

 case 152:
  bna_bfi_ethport_linkup_aen(&bna->ethport, msghdr);
  break;

 case 153:
  bna_bfi_ethport_linkdown_aen(&bna->ethport, msghdr);
  break;

 case 142:
  bna_bfi_ethport_enable_aen(&bna->ethport, msghdr);
  break;

 case 143:
  bna_bfi_ethport_disable_aen(&bna->ethport, msghdr);
  break;

 case 156:
  bna_bfi_bw_update_aen(&bna->tx_mod);
  break;

 default:
  break;
 }
}
