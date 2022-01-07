
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {scalar_t__ enet_id; int rx_pause; int tx_pause; } ;


 int AXGMAC_CONFIG_1 ;
 int BIT (int) ;
 int CFG_RSIF_FPBUFF_TIMEOUT_EN ;
 int DEF_QUANTA ;
 int HSTLENCHK ;
 int HSTPPEN ;
 int NORM_PAUSE_OPCODE ;
 int RESUME_TX ;
 int RSIF_CLE_BUFF_THRESH_SET (int*,int ) ;
 int RSIF_PLC_CLE_BUFF_THRESH_SET (int*,int ) ;
 int XGENET_CSR_MULTI_DPF0_ADDR ;
 int XGENET_CSR_MULTI_DPF1_ADDR ;
 int XGENET_RX_DV_GATE_REG_0_ADDR ;
 scalar_t__ XGENE_ENET1 ;
 int XG_CFG_BYPASS_ADDR ;
 int XG_DEF_PAUSE_OFF_THRES ;
 int XG_DEF_PAUSE_THRES ;
 int XG_ENET_SPARE_CFG_REG_1_ADDR ;
 int XG_ENET_SPARE_CFG_REG_ADDR ;
 int XG_RSIF_CLE_BUFF_THRESH ;
 int XG_RSIF_CONFIG1_REG_ADDR ;
 int XG_RSIF_CONFIG_REG_ADDR ;
 int XG_RSIF_PLC_CLE_BUFF_THRESH ;
 int XG_RXBUF_PAUSE_THRESH ;
 int xgene_enet_rd_axg_csr (struct xgene_enet_pdata*,int ,int*) ;
 int xgene_enet_rd_csr (struct xgene_enet_pdata*,int ,int*) ;
 int xgene_enet_rd_mac (struct xgene_enet_pdata*,int ) ;
 int xgene_enet_wr_axg_csr (struct xgene_enet_pdata*,int ,int) ;
 int xgene_enet_wr_csr (struct xgene_enet_pdata*,int ,int) ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int) ;
 int xgene_xgmac_flowctl_rx (struct xgene_enet_pdata*,int ) ;
 int xgene_xgmac_flowctl_tx (struct xgene_enet_pdata*,int ) ;
 int xgene_xgmac_reset (struct xgene_enet_pdata*) ;
 int xgene_xgmac_set_mac_addr (struct xgene_enet_pdata*) ;

__attribute__((used)) static void xgene_xgmac_init(struct xgene_enet_pdata *pdata)
{
 u32 data;

 xgene_xgmac_reset(pdata);

 data = xgene_enet_rd_mac(pdata, AXGMAC_CONFIG_1);
 data |= HSTPPEN;
 data &= ~HSTLENCHK;
 xgene_enet_wr_mac(pdata, AXGMAC_CONFIG_1, data);

 xgene_xgmac_set_mac_addr(pdata);

 xgene_enet_rd_csr(pdata, XG_RSIF_CONFIG_REG_ADDR, &data);
 data |= CFG_RSIF_FPBUFF_TIMEOUT_EN;

 RSIF_CLE_BUFF_THRESH_SET(&data, XG_RSIF_CLE_BUFF_THRESH);
 xgene_enet_wr_csr(pdata, XG_RSIF_CONFIG_REG_ADDR, data);


 xgene_enet_rd_csr(pdata, XG_RSIF_CONFIG1_REG_ADDR, &data);
 RSIF_PLC_CLE_BUFF_THRESH_SET(&data, XG_RSIF_PLC_CLE_BUFF_THRESH);
 xgene_enet_wr_csr(pdata, XG_RSIF_CONFIG1_REG_ADDR, data);

 xgene_enet_rd_csr(pdata, XG_ENET_SPARE_CFG_REG_ADDR, &data);
 data |= BIT(12);
 xgene_enet_wr_csr(pdata, XG_ENET_SPARE_CFG_REG_ADDR, data);
 xgene_enet_wr_csr(pdata, XG_ENET_SPARE_CFG_REG_1_ADDR, 0x82);
 xgene_enet_wr_csr(pdata, XGENET_RX_DV_GATE_REG_0_ADDR, 0);
 xgene_enet_wr_csr(pdata, XG_CFG_BYPASS_ADDR, RESUME_TX);


 xgene_enet_rd_axg_csr(pdata, XGENET_CSR_MULTI_DPF0_ADDR, &data);
 data = (DEF_QUANTA << 16) | (data & 0xFFFF);
 xgene_enet_wr_axg_csr(pdata, XGENET_CSR_MULTI_DPF0_ADDR, data);

 if (pdata->enet_id != XGENE_ENET1) {
  xgene_enet_rd_axg_csr(pdata, XGENET_CSR_MULTI_DPF1_ADDR, &data);
  data = (NORM_PAUSE_OPCODE << 16) | (data & 0xFFFF);
  xgene_enet_wr_axg_csr(pdata, XGENET_CSR_MULTI_DPF1_ADDR, data);
 }

 data = (XG_DEF_PAUSE_OFF_THRES << 16) | XG_DEF_PAUSE_THRES;
 xgene_enet_wr_csr(pdata, XG_RXBUF_PAUSE_THRESH, data);

 xgene_xgmac_flowctl_tx(pdata, pdata->tx_pause);
 xgene_xgmac_flowctl_rx(pdata, pdata->rx_pause);
}
