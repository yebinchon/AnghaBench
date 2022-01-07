
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct bna_rxf {scalar_t__ rss_status; int* vlan_filter_table; int vlan_strip_status; scalar_t__ vlan_pending_bitmask; int vlan_filter_status; int rss_pending; int rss_cfg; scalar_t__* rit; int mcast_handle_q; int mcast_active_q; int mcast_pending_del_q; int mcast_pending_add_q; int * ucast_pending_mac; int ucast_active_q; scalar_t__ ucast_active_set; scalar_t__ ucast_pending_set; int ucast_pending_del_q; int ucast_pending_add_q; struct bna_rx* rx; } ;
struct bna_rx_config {scalar_t__ rss_status; int vlan_strip_status; int rss_config; int num_paths; } ;
struct bna_rx {int dummy; } ;
struct TYPE_5__ {TYPE_1__* mdl; } ;
struct TYPE_6__ {TYPE_2__ mem_info; } ;
struct bna_res_info {TYPE_3__ res_u; } ;
struct TYPE_4__ {scalar_t__ kva; } ;


 int BFI_ENET_VLAN_ID_MAX ;
 scalar_t__ BFI_VLAN_BMASK_ALL ;
 int BNA_RSS_F_CFG_PENDING ;
 int BNA_RSS_F_RIT_PENDING ;
 int BNA_RSS_F_STATUS_PENDING ;
 size_t BNA_RX_RES_MEM_T_RIT ;
 int BNA_STATUS_T_DISABLED ;
 scalar_t__ BNA_STATUS_T_ENABLED ;
 int INIT_LIST_HEAD (int *) ;
 int bfa_fsm_set_state (struct bna_rxf*,int ) ;
 int bna_rit_init (struct bna_rxf*,int ) ;
 int bna_rxf_sm_stopped ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void
bna_rxf_init(struct bna_rxf *rxf,
  struct bna_rx *rx,
  struct bna_rx_config *q_config,
  struct bna_res_info *res_info)
{
 rxf->rx = rx;

 INIT_LIST_HEAD(&rxf->ucast_pending_add_q);
 INIT_LIST_HEAD(&rxf->ucast_pending_del_q);
 rxf->ucast_pending_set = 0;
 rxf->ucast_active_set = 0;
 INIT_LIST_HEAD(&rxf->ucast_active_q);
 rxf->ucast_pending_mac = ((void*)0);

 INIT_LIST_HEAD(&rxf->mcast_pending_add_q);
 INIT_LIST_HEAD(&rxf->mcast_pending_del_q);
 INIT_LIST_HEAD(&rxf->mcast_active_q);
 INIT_LIST_HEAD(&rxf->mcast_handle_q);

 rxf->rit = (u8 *)
  res_info[BNA_RX_RES_MEM_T_RIT].res_u.mem_info.mdl[0].kva;
 bna_rit_init(rxf, q_config->num_paths);

 rxf->rss_status = q_config->rss_status;
 if (rxf->rss_status == BNA_STATUS_T_ENABLED) {
  rxf->rss_cfg = q_config->rss_config;
  rxf->rss_pending |= BNA_RSS_F_CFG_PENDING;
  rxf->rss_pending |= BNA_RSS_F_RIT_PENDING;
  rxf->rss_pending |= BNA_RSS_F_STATUS_PENDING;
 }

 rxf->vlan_filter_status = BNA_STATUS_T_DISABLED;
 memset(rxf->vlan_filter_table, 0,
   (sizeof(u32) * (BFI_ENET_VLAN_ID_MAX / 32)));
 rxf->vlan_filter_table[0] |= 1;
 rxf->vlan_pending_bitmask = (u8)BFI_VLAN_BMASK_ALL;

 rxf->vlan_strip_status = q_config->vlan_strip_status;

 bfa_fsm_set_state(rxf, bna_rxf_sm_stopped);
}
