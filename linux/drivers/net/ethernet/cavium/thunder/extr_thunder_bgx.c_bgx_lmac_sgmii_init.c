
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct lmac {int lmacid; int autoneg; scalar_t__ lmac_type; scalar_t__ phydev; } ;
struct bgx {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int BGX_CMRX_CFG ;
 int BGX_GMP_GMI_RXX_JABBER ;
 int BGX_GMP_GMI_TXX_APPEND ;
 int BGX_GMP_GMI_TXX_SGMII_CTL ;
 int BGX_GMP_GMI_TXX_THRESH ;
 int BGX_GMP_PCS_MISCX_CTL ;
 int BGX_GMP_PCS_MRX_CTL ;
 int BGX_GMP_PCS_MRX_STATUS ;
 scalar_t__ BGX_MODE_QSGMII ;
 scalar_t__ BGX_MODE_SGMII ;
 int CMR_EN ;
 int MAX_FRAME_SIZE ;
 int PCS_MISC_CTL_DISP_EN ;
 int PCS_MRX_CTL_AN_EN ;
 int PCS_MRX_CTL_PWR_DN ;
 int PCS_MRX_CTL_RESET ;
 int PCS_MRX_CTL_RST_AN ;
 int PCS_MRX_STATUS_AN_CPT ;
 scalar_t__ bgx_poll_reg (struct bgx*,int,int ,int,int) ;
 int bgx_reg_modify (struct bgx*,int,int ,int) ;
 int bgx_reg_read (struct bgx*,int,int ) ;
 int bgx_reg_write (struct bgx*,int,int ,int) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int bgx_lmac_sgmii_init(struct bgx *bgx, struct lmac *lmac)
{
 int lmacid = lmac->lmacid;
 u64 cfg;

 bgx_reg_modify(bgx, lmacid, BGX_GMP_GMI_TXX_THRESH, 0x30);

 bgx_reg_modify(bgx, lmacid, BGX_GMP_GMI_RXX_JABBER, MAX_FRAME_SIZE);


 cfg = bgx_reg_read(bgx, lmacid, BGX_GMP_GMI_TXX_APPEND);
 if (cfg & 1)
  bgx_reg_write(bgx, lmacid, BGX_GMP_GMI_TXX_SGMII_CTL, 0);


 bgx_reg_modify(bgx, lmacid, BGX_CMRX_CFG, CMR_EN);


 bgx_reg_modify(bgx, lmacid, BGX_GMP_PCS_MRX_CTL, PCS_MRX_CTL_RESET);
 if (bgx_poll_reg(bgx, lmacid, BGX_GMP_PCS_MRX_CTL,
    PCS_MRX_CTL_RESET, 1)) {
  dev_err(&bgx->pdev->dev, "BGX PCS reset not completed\n");
  return -1;
 }


 cfg = bgx_reg_read(bgx, lmacid, BGX_GMP_PCS_MRX_CTL);
 cfg &= ~PCS_MRX_CTL_PWR_DN;
 cfg |= PCS_MRX_CTL_RST_AN;
 if (lmac->phydev) {
  cfg |= PCS_MRX_CTL_AN_EN;
 } else {




  if (cfg & PCS_MRX_CTL_AN_EN)
   lmac->autoneg = 1;
 }
 bgx_reg_write(bgx, lmacid, BGX_GMP_PCS_MRX_CTL, cfg);

 if (lmac->lmac_type == BGX_MODE_QSGMII) {

  cfg = bgx_reg_read(bgx, lmacid, BGX_GMP_PCS_MISCX_CTL);
  cfg &= ~PCS_MISC_CTL_DISP_EN;
  bgx_reg_write(bgx, lmacid, BGX_GMP_PCS_MISCX_CTL, cfg);
  return 0;
 }

 if ((lmac->lmac_type == BGX_MODE_SGMII) && lmac->phydev) {
  if (bgx_poll_reg(bgx, lmacid, BGX_GMP_PCS_MRX_STATUS,
     PCS_MRX_STATUS_AN_CPT, 0)) {
   dev_err(&bgx->pdev->dev, "BGX AN_CPT not completed\n");
   return -1;
  }
 }

 return 0;
}
