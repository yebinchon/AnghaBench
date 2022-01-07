
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_pdata {int phy_mode; int rxq_cnt; int txq_cnt; int cq_cnt; scalar_t__ enet_id; int port_id; int * ring_ops; void* rm; void* ring_num; void* bp_bufnum; void* eth_bufnum; void* cpu_bufnum; int * cle_ops; int * port_ops; int * mac_ops; } ;







 int PHY_INTERFACE_MODE_XGMII ;
 void* RM0 ;
 void* RM1 ;
 void* RM3 ;
 void* START_BP_BUFNUM_0 ;
 void* START_BP_BUFNUM_1 ;
 void* START_CPU_BUFNUM_0 ;
 void* START_CPU_BUFNUM_1 ;
 void* START_ETH_BUFNUM_0 ;
 void* START_ETH_BUFNUM_1 ;
 void* START_RING_NUM_0 ;
 void* START_RING_NUM_1 ;
 void* X2_START_BP_BUFNUM_0 ;
 void* X2_START_BP_BUFNUM_1 ;
 void* X2_START_CPU_BUFNUM_0 ;
 void* X2_START_CPU_BUFNUM_1 ;
 void* X2_START_ETH_BUFNUM_0 ;
 void* X2_START_ETH_BUFNUM_1 ;
 void* X2_START_RING_NUM_0 ;
 void* X2_START_RING_NUM_1 ;
 scalar_t__ XGENE_ENET1 ;
 int XGENE_NUM_RX_RING ;
 int XGENE_NUM_TXC_RING ;
 int XGENE_NUM_TX_RING ;
 void* XG_START_BP_BUFNUM_1 ;
 void* XG_START_CPU_BUFNUM_1 ;
 void* XG_START_ETH_BUFNUM_1 ;
 void* XG_START_RING_NUM_1 ;
 int xgene_cle3in_ops ;
 int xgene_gmac_ops ;
 int xgene_gport_ops ;
 int xgene_ring1_ops ;
 int xgene_ring2_ops ;
 int xgene_sgmac_ops ;
 int xgene_sgport_ops ;
 int xgene_xgmac_ops ;
 int xgene_xgport_ops ;

__attribute__((used)) static void xgene_enet_setup_ops(struct xgene_enet_pdata *pdata)
{
 switch (pdata->phy_mode) {
 case 132:
 case 131:
 case 130:
 case 129:
  pdata->mac_ops = &xgene_gmac_ops;
  pdata->port_ops = &xgene_gport_ops;
  pdata->rm = RM3;
  pdata->rxq_cnt = 1;
  pdata->txq_cnt = 1;
  pdata->cq_cnt = 0;
  break;
 case 128:
  pdata->mac_ops = &xgene_sgmac_ops;
  pdata->port_ops = &xgene_sgport_ops;
  pdata->rm = RM1;
  pdata->rxq_cnt = 1;
  pdata->txq_cnt = 1;
  pdata->cq_cnt = 1;
  break;
 default:
  pdata->mac_ops = &xgene_xgmac_ops;
  pdata->port_ops = &xgene_xgport_ops;
  pdata->cle_ops = &xgene_cle3in_ops;
  pdata->rm = RM0;
  if (!pdata->rxq_cnt) {
   pdata->rxq_cnt = XGENE_NUM_RX_RING;
   pdata->txq_cnt = XGENE_NUM_TX_RING;
   pdata->cq_cnt = XGENE_NUM_TXC_RING;
  }
  break;
 }

 if (pdata->enet_id == XGENE_ENET1) {
  switch (pdata->port_id) {
  case 0:
   if (pdata->phy_mode == PHY_INTERFACE_MODE_XGMII) {
    pdata->cpu_bufnum = X2_START_CPU_BUFNUM_0;
    pdata->eth_bufnum = X2_START_ETH_BUFNUM_0;
    pdata->bp_bufnum = X2_START_BP_BUFNUM_0;
    pdata->ring_num = START_RING_NUM_0;
   } else {
    pdata->cpu_bufnum = START_CPU_BUFNUM_0;
    pdata->eth_bufnum = START_ETH_BUFNUM_0;
    pdata->bp_bufnum = START_BP_BUFNUM_0;
    pdata->ring_num = START_RING_NUM_0;
   }
   break;
  case 1:
   if (pdata->phy_mode == PHY_INTERFACE_MODE_XGMII) {
    pdata->cpu_bufnum = XG_START_CPU_BUFNUM_1;
    pdata->eth_bufnum = XG_START_ETH_BUFNUM_1;
    pdata->bp_bufnum = XG_START_BP_BUFNUM_1;
    pdata->ring_num = XG_START_RING_NUM_1;
   } else {
    pdata->cpu_bufnum = START_CPU_BUFNUM_1;
    pdata->eth_bufnum = START_ETH_BUFNUM_1;
    pdata->bp_bufnum = START_BP_BUFNUM_1;
    pdata->ring_num = START_RING_NUM_1;
   }
   break;
  default:
   break;
  }
  pdata->ring_ops = &xgene_ring1_ops;
 } else {
  switch (pdata->port_id) {
  case 0:
   pdata->cpu_bufnum = X2_START_CPU_BUFNUM_0;
   pdata->eth_bufnum = X2_START_ETH_BUFNUM_0;
   pdata->bp_bufnum = X2_START_BP_BUFNUM_0;
   pdata->ring_num = X2_START_RING_NUM_0;
   break;
  case 1:
   pdata->cpu_bufnum = X2_START_CPU_BUFNUM_1;
   pdata->eth_bufnum = X2_START_ETH_BUFNUM_1;
   pdata->bp_bufnum = X2_START_BP_BUFNUM_1;
   pdata->ring_num = X2_START_RING_NUM_1;
   break;
  default:
   break;
  }
  pdata->rm = RM0;
  pdata->ring_ops = &xgene_ring2_ops;
 }
}
