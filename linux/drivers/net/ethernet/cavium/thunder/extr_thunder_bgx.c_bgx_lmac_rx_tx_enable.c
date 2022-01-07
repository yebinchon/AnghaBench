
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct lmac {int last_speed; int link_up; } ;
struct bgx {scalar_t__ is_rgx; struct lmac* lmac; } ;


 int BGX_CMRX_CFG ;
 int CMR_PKT_RX_EN ;
 int CMR_PKT_TX_EN ;
 int bgx_reg_read (struct bgx*,int,int ) ;
 int bgx_reg_write (struct bgx*,int,int ,int) ;
 struct bgx* get_bgx (int,int) ;
 int xcv_setup_link (int ,int ) ;

void bgx_lmac_rx_tx_enable(int node, int bgx_idx, int lmacid, bool enable)
{
 struct bgx *bgx = get_bgx(node, bgx_idx);
 struct lmac *lmac;
 u64 cfg;

 if (!bgx)
  return;
 lmac = &bgx->lmac[lmacid];

 cfg = bgx_reg_read(bgx, lmacid, BGX_CMRX_CFG);
 if (enable)
  cfg |= CMR_PKT_RX_EN | CMR_PKT_TX_EN;
 else
  cfg &= ~(CMR_PKT_RX_EN | CMR_PKT_TX_EN);
 bgx_reg_write(bgx, lmacid, BGX_CMRX_CFG, cfg);

 if (bgx->is_rgx)
  xcv_setup_link(enable ? lmac->link_up : 0, lmac->last_speed);
}
