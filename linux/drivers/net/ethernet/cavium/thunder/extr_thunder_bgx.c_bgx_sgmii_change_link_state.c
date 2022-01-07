
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct lmac {int last_duplex; int last_speed; scalar_t__ link_up; int lmacid; struct bgx* bgx; } ;
struct bgx {scalar_t__ is_rgx; int bgx_id; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int BGX_CMRX_CFG ;
 int BGX_GMP_GMI_PRTX_CFG ;
 int BGX_GMP_GMI_TXX_BURST ;
 int BGX_GMP_GMI_TXX_SLOT ;
 int BGX_GMP_PCS_MISCX_CTL ;
 int CMR_PKT_RX_EN ;
 int CMR_PKT_TX_EN ;
 int GMI_PORT_CFG_DUPLEX ;
 int GMI_PORT_CFG_RX_IDLE ;
 int GMI_PORT_CFG_SLOT_TIME ;
 int GMI_PORT_CFG_SPEED ;
 int GMI_PORT_CFG_SPEED_MSB ;
 int GMI_PORT_CFG_TX_IDLE ;
 int PCS_MISC_CTL_GMX_ENO ;
 int PCS_MISC_CTL_SAMP_PT_MASK ;
 scalar_t__ bgx_poll_reg (struct bgx*,int ,int ,int ,int) ;
 int bgx_reg_read (struct bgx*,int ,int ) ;
 int bgx_reg_write (struct bgx*,int ,int ,int) ;
 int dev_err (int *,char*,int ,int ) ;
 int xcv_setup_link (scalar_t__,int) ;

__attribute__((used)) static void bgx_sgmii_change_link_state(struct lmac *lmac)
{
 struct bgx *bgx = lmac->bgx;
 u64 cmr_cfg;
 u64 port_cfg = 0;
 u64 misc_ctl = 0;
 bool tx_en, rx_en;

 cmr_cfg = bgx_reg_read(bgx, lmac->lmacid, BGX_CMRX_CFG);
 tx_en = cmr_cfg & CMR_PKT_TX_EN;
 rx_en = cmr_cfg & CMR_PKT_RX_EN;
 cmr_cfg &= ~(CMR_PKT_RX_EN | CMR_PKT_TX_EN);
 bgx_reg_write(bgx, lmac->lmacid, BGX_CMRX_CFG, cmr_cfg);


 if (bgx_poll_reg(bgx, lmac->lmacid, BGX_GMP_GMI_PRTX_CFG,
    GMI_PORT_CFG_RX_IDLE, 0)) {
  dev_err(&bgx->pdev->dev, "BGX%d LMAC%d GMI RX not idle\n",
   bgx->bgx_id, lmac->lmacid);
  return;
 }


 if (bgx_poll_reg(bgx, lmac->lmacid, BGX_GMP_GMI_PRTX_CFG,
    GMI_PORT_CFG_TX_IDLE, 0)) {
  dev_err(&bgx->pdev->dev, "BGX%d LMAC%d GMI TX not idle\n",
   bgx->bgx_id, lmac->lmacid);
  return;
 }

 port_cfg = bgx_reg_read(bgx, lmac->lmacid, BGX_GMP_GMI_PRTX_CFG);
 misc_ctl = bgx_reg_read(bgx, lmac->lmacid, BGX_GMP_PCS_MISCX_CTL);

 if (lmac->link_up) {
  misc_ctl &= ~PCS_MISC_CTL_GMX_ENO;
  port_cfg &= ~GMI_PORT_CFG_DUPLEX;
  port_cfg |= (lmac->last_duplex << 2);
 } else {
  misc_ctl |= PCS_MISC_CTL_GMX_ENO;
 }

 switch (lmac->last_speed) {
 case 10:
  port_cfg &= ~GMI_PORT_CFG_SPEED;
  port_cfg |= GMI_PORT_CFG_SPEED_MSB;
  port_cfg &= ~GMI_PORT_CFG_SLOT_TIME;
  misc_ctl &= ~PCS_MISC_CTL_SAMP_PT_MASK;
  misc_ctl |= 50;
  bgx_reg_write(bgx, lmac->lmacid, BGX_GMP_GMI_TXX_SLOT, 64);
  bgx_reg_write(bgx, lmac->lmacid, BGX_GMP_GMI_TXX_BURST, 0);
  break;
 case 100:
  port_cfg &= ~GMI_PORT_CFG_SPEED;
  port_cfg &= ~GMI_PORT_CFG_SPEED_MSB;
  port_cfg &= ~GMI_PORT_CFG_SLOT_TIME;
  misc_ctl &= ~PCS_MISC_CTL_SAMP_PT_MASK;
  misc_ctl |= 5;
  bgx_reg_write(bgx, lmac->lmacid, BGX_GMP_GMI_TXX_SLOT, 64);
  bgx_reg_write(bgx, lmac->lmacid, BGX_GMP_GMI_TXX_BURST, 0);
  break;
 case 1000:
  port_cfg |= GMI_PORT_CFG_SPEED;
  port_cfg &= ~GMI_PORT_CFG_SPEED_MSB;
  port_cfg |= GMI_PORT_CFG_SLOT_TIME;
  misc_ctl &= ~PCS_MISC_CTL_SAMP_PT_MASK;
  misc_ctl |= 1;
  bgx_reg_write(bgx, lmac->lmacid, BGX_GMP_GMI_TXX_SLOT, 512);
  if (lmac->last_duplex)
   bgx_reg_write(bgx, lmac->lmacid,
          BGX_GMP_GMI_TXX_BURST, 0);
  else
   bgx_reg_write(bgx, lmac->lmacid,
          BGX_GMP_GMI_TXX_BURST, 8192);
  break;
 default:
  break;
 }
 bgx_reg_write(bgx, lmac->lmacid, BGX_GMP_PCS_MISCX_CTL, misc_ctl);
 bgx_reg_write(bgx, lmac->lmacid, BGX_GMP_GMI_PRTX_CFG, port_cfg);


 cmr_cfg |= (rx_en ? CMR_PKT_RX_EN : 0) | (tx_en ? CMR_PKT_TX_EN : 0);
 bgx_reg_write(bgx, lmac->lmacid, BGX_CMRX_CFG, cmr_cfg);

 if (bgx->is_rgx && (cmr_cfg & (CMR_PKT_RX_EN | CMR_PKT_TX_EN)))
  xcv_setup_link(lmac->link_up, lmac->last_speed);
}
