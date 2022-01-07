
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct lmac {scalar_t__ lmac_type; } ;
struct bgx {struct lmac* lmac; } ;


 int BGX_GMP_GMI_RXX_FRM_CTL ;
 scalar_t__ BGX_MODE_QSGMII ;
 scalar_t__ BGX_MODE_RGMII ;
 scalar_t__ BGX_MODE_SGMII ;
 int BGX_PKT_RX_PTP_EN ;
 int BGX_SMUX_RX_FRM_CTL ;
 int bgx_reg_read (struct bgx*,int,int ) ;
 int bgx_reg_write (struct bgx*,int,int ,int ) ;
 struct bgx* get_bgx (int,int) ;

void bgx_config_timestamping(int node, int bgx_idx, int lmacid, bool enable)
{
 struct bgx *bgx = get_bgx(node, bgx_idx);
 struct lmac *lmac;
 u64 csr_offset, cfg;

 if (!bgx)
  return;

 lmac = &bgx->lmac[lmacid];

 if (lmac->lmac_type == BGX_MODE_SGMII ||
     lmac->lmac_type == BGX_MODE_QSGMII ||
     lmac->lmac_type == BGX_MODE_RGMII)
  csr_offset = BGX_GMP_GMI_RXX_FRM_CTL;
 else
  csr_offset = BGX_SMUX_RX_FRM_CTL;

 cfg = bgx_reg_read(bgx, lmacid, csr_offset);

 if (enable)
  cfg |= BGX_PKT_RX_PTP_EN;
 else
  cfg &= ~BGX_PKT_RX_PTP_EN;
 bgx_reg_write(bgx, lmacid, csr_offset, cfg);
}
