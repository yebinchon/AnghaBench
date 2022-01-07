
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int rx_pause; int tx_pause; int mdio_driver; } ;


 int CFG_BYPASS_ADDR ;
 int CFG_LINK_AGGR_RESUME_0_ADDR ;
 int CFG_RSIF_FPBUFF_TIMEOUT_EN ;
 int CSR_MULTI_DPF0_ADDR ;
 int DEF_PAUSE_OFF_THRES ;
 int DEF_PAUSE_THRES ;
 int DEF_QUANTA ;
 int MGMT_CLOCK_SEL_SET (int*,int) ;
 int MII_MGMT_CONFIG_ADDR ;
 int RESUME_RX0 ;
 int RESUME_TX ;
 int RSIF_CONFIG_REG_ADDR ;
 int RSIF_RAM_DBG_REG0_ADDR ;
 int RXBUF_PAUSE_OFF_THRESH ;
 int RXBUF_PAUSE_THRESH ;
 int RX_DV_GATE_EN0 ;
 int RX_DV_GATE_REG_0_ADDR ;
 int TX_DV_GATE_EN0 ;
 int TX_PORT0 ;
 int xgene_enet_rd_csr (struct xgene_enet_pdata*,int ,int*) ;
 int xgene_enet_rd_mac (struct xgene_enet_pdata*,int ) ;
 int xgene_enet_rd_mcx_csr (struct xgene_enet_pdata*,int ,int*) ;
 int xgene_enet_wr_csr (struct xgene_enet_pdata*,int ,int) ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int) ;
 int xgene_enet_wr_mcx_csr (struct xgene_enet_pdata*,int ,int) ;
 int xgene_gmac_flowctl_rx (struct xgene_enet_pdata*,int ) ;
 int xgene_gmac_flowctl_tx (struct xgene_enet_pdata*,int ) ;
 int xgene_gmac_reset (struct xgene_enet_pdata*) ;
 int xgene_gmac_set_mac_addr (struct xgene_enet_pdata*) ;
 int xgene_gmac_set_speed (struct xgene_enet_pdata*) ;

__attribute__((used)) static void xgene_gmac_init(struct xgene_enet_pdata *pdata)
{
 u32 value;

 if (!pdata->mdio_driver)
  xgene_gmac_reset(pdata);

 xgene_gmac_set_speed(pdata);
 xgene_gmac_set_mac_addr(pdata);


 value = xgene_enet_rd_mac(pdata, MII_MGMT_CONFIG_ADDR);
 MGMT_CLOCK_SEL_SET(&value, 7);
 xgene_enet_wr_mac(pdata, MII_MGMT_CONFIG_ADDR, value);


 xgene_enet_rd_csr(pdata, RSIF_CONFIG_REG_ADDR, &value);
 value |= CFG_RSIF_FPBUFF_TIMEOUT_EN;
 xgene_enet_wr_csr(pdata, RSIF_CONFIG_REG_ADDR, value);


 xgene_enet_wr_csr(pdata, RSIF_RAM_DBG_REG0_ADDR, 0);


 xgene_enet_rd_mcx_csr(pdata, CSR_MULTI_DPF0_ADDR, &value);
 value = (DEF_QUANTA << 16) | (value & 0xFFFF);
 xgene_enet_wr_mcx_csr(pdata, CSR_MULTI_DPF0_ADDR, value);

 xgene_enet_wr_csr(pdata, RXBUF_PAUSE_THRESH, DEF_PAUSE_THRES);
 xgene_enet_wr_csr(pdata, RXBUF_PAUSE_OFF_THRESH, DEF_PAUSE_OFF_THRES);

 xgene_gmac_flowctl_tx(pdata, pdata->tx_pause);
 xgene_gmac_flowctl_rx(pdata, pdata->rx_pause);


 xgene_enet_wr_csr(pdata, CFG_LINK_AGGR_RESUME_0_ADDR, TX_PORT0);

 xgene_enet_rd_mcx_csr(pdata, RX_DV_GATE_REG_0_ADDR, &value);
 value &= ~TX_DV_GATE_EN0;
 value &= ~RX_DV_GATE_EN0;
 value |= RESUME_RX0;
 xgene_enet_wr_mcx_csr(pdata, RX_DV_GATE_REG_0_ADDR, value);

 xgene_enet_wr_csr(pdata, CFG_BYPASS_ADDR, RESUME_TX);
}
