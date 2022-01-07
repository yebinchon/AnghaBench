
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xgene_enet_pdata {int* extd_stats; scalar_t__ phy_mode; int false_rflr; int vlan_rjbr; TYPE_1__* mac_ops; } ;
struct TYPE_4__ {scalar_t__ mask; int addr; } ;
struct TYPE_3__ {int (* get_drop_cnt ) (struct xgene_enet_pdata*,int*,int*) ;} ;


 size_t FALSE_RFLR_IDX ;
 size_t FALSE_RJBR_IDX ;
 int GENMASK (scalar_t__,int ) ;
 scalar_t__ PHY_INTERFACE_MODE_XGMII ;
 size_t RALN_IDX ;
 size_t RFCS_IDX ;
 size_t RFLR_IDX ;
 size_t RUND_IDX ;
 size_t RX_OVERRUN_IDX ;
 size_t TFCS_IDX ;
 size_t TFRG_IDX ;
 size_t TX_UNDERRUN_IDX ;
 int XGENE_EXTD_STATS_LEN ;
 TYPE_2__* gstrings_extd_stats ;
 int stub1 (struct xgene_enet_pdata*,int*,int*) ;
 int xgene_enet_rd_stat (struct xgene_enet_pdata*,int ) ;

__attribute__((used)) static void xgene_get_extd_stats(struct xgene_enet_pdata *pdata)
{
 u32 rx_drop, tx_drop;
 u32 mask, tmp;
 int i;

 for (i = 0; i < XGENE_EXTD_STATS_LEN; i++) {
  tmp = xgene_enet_rd_stat(pdata, gstrings_extd_stats[i].addr);
  if (gstrings_extd_stats[i].mask) {
   mask = GENMASK(gstrings_extd_stats[i].mask - 1, 0);
   pdata->extd_stats[i] += (tmp & mask);
  }
 }

 if (pdata->phy_mode == PHY_INTERFACE_MODE_XGMII) {

  pdata->extd_stats[RALN_IDX] = 0;
 } else {

  pdata->extd_stats[RFCS_IDX] -= pdata->extd_stats[RALN_IDX];
  pdata->extd_stats[RFLR_IDX] -= pdata->extd_stats[RUND_IDX];
  pdata->extd_stats[TFCS_IDX] -= pdata->extd_stats[TFRG_IDX];
 }

 pdata->mac_ops->get_drop_cnt(pdata, &rx_drop, &tx_drop);
 pdata->extd_stats[RX_OVERRUN_IDX] += rx_drop;
 pdata->extd_stats[TX_UNDERRUN_IDX] += tx_drop;


 pdata->extd_stats[FALSE_RFLR_IDX] = pdata->false_rflr;

 pdata->extd_stats[FALSE_RJBR_IDX] = pdata->vlan_rjbr;
}
