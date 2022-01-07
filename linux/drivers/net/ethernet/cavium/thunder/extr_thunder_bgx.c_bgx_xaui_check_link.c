
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct lmac {int lmacid; int lmac_type; scalar_t__ use_training; struct bgx* bgx; } ;
struct bgx {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int BGX_MODE_10G_KR ;
 int BGX_MODE_40G_KR ;
 int BGX_MODE_XFI ;
 int BGX_MODE_XLAUI ;
 int BGX_SMUX_CTL ;
 int BGX_SMUX_RX_CTL ;
 int BGX_SPUX_BR_PMD_CRTL ;
 int BGX_SPUX_BR_STATUS1 ;
 int BGX_SPUX_BX_STATUS ;
 int BGX_SPUX_CONTROL1 ;
 int BGX_SPUX_INT ;
 int BGX_SPUX_STATUS2 ;
 int SMU_CTL_RX_IDLE ;
 int SMU_CTL_TX_IDLE ;
 unsigned long long SMU_RX_CTL_STATUS ;
 int SPU_BR_STATUS_BLK_LOCK ;
 int SPU_BX_STATUS_RX_ALIGN ;
 int SPU_CTL_RESET ;
 int SPU_STATUS2_RCVFLT ;
 int bgx_lmac_xaui_init (struct bgx*,struct lmac*) ;
 scalar_t__ bgx_poll_reg (struct bgx*,int,int ,int ,int) ;
 int bgx_reg_modify (struct bgx*,int,int ,int) ;
 int bgx_reg_read (struct bgx*,int,int ) ;
 int bgx_reg_write (struct bgx*,int,int ,unsigned long long) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int bgx_xaui_check_link(struct lmac *lmac)
{
 struct bgx *bgx = lmac->bgx;
 int lmacid = lmac->lmacid;
 int lmac_type = lmac->lmac_type;
 u64 cfg;

 if (lmac->use_training) {
  cfg = bgx_reg_read(bgx, lmacid, BGX_SPUX_INT);
  if (!(cfg & (1ull << 13))) {
   cfg = (1ull << 13) | (1ull << 14);
   bgx_reg_write(bgx, lmacid, BGX_SPUX_INT, cfg);
   cfg = bgx_reg_read(bgx, lmacid, BGX_SPUX_BR_PMD_CRTL);
   cfg |= (1ull << 0);
   bgx_reg_write(bgx, lmacid, BGX_SPUX_BR_PMD_CRTL, cfg);
   return -1;
  }
 }


 if (bgx_poll_reg(bgx, lmacid, BGX_SPUX_CONTROL1, SPU_CTL_RESET, 1)) {
  dev_err(&bgx->pdev->dev, "BGX SPU reset not completed\n");
  return -1;
 }

 if ((lmac_type == BGX_MODE_10G_KR) || (lmac_type == BGX_MODE_XFI) ||
     (lmac_type == BGX_MODE_40G_KR) || (lmac_type == BGX_MODE_XLAUI)) {
  if (bgx_poll_reg(bgx, lmacid, BGX_SPUX_BR_STATUS1,
     SPU_BR_STATUS_BLK_LOCK, 0)) {
   dev_err(&bgx->pdev->dev,
    "SPU_BR_STATUS_BLK_LOCK not completed\n");
   return -1;
  }
 } else {
  if (bgx_poll_reg(bgx, lmacid, BGX_SPUX_BX_STATUS,
     SPU_BX_STATUS_RX_ALIGN, 0)) {
   dev_err(&bgx->pdev->dev,
    "SPU_BX_STATUS_RX_ALIGN not completed\n");
   return -1;
  }
 }


 if (bgx_reg_read(bgx, lmacid, BGX_SPUX_STATUS2) & SPU_STATUS2_RCVFLT)
  bgx_reg_modify(bgx, lmacid,
          BGX_SPUX_STATUS2, SPU_STATUS2_RCVFLT);
 if (bgx_reg_read(bgx, lmacid, BGX_SPUX_STATUS2) & SPU_STATUS2_RCVFLT) {
  dev_err(&bgx->pdev->dev, "Receive fault, retry training\n");
  if (lmac->use_training) {
   cfg = bgx_reg_read(bgx, lmacid, BGX_SPUX_INT);
   if (!(cfg & (1ull << 13))) {
    cfg = (1ull << 13) | (1ull << 14);
    bgx_reg_write(bgx, lmacid, BGX_SPUX_INT, cfg);
    cfg = bgx_reg_read(bgx, lmacid,
         BGX_SPUX_BR_PMD_CRTL);
    cfg |= (1ull << 0);
    bgx_reg_write(bgx, lmacid,
           BGX_SPUX_BR_PMD_CRTL, cfg);
    return -1;
   }
  }
  return -1;
 }


 if (bgx_poll_reg(bgx, lmacid, BGX_SMUX_CTL, SMU_CTL_RX_IDLE, 0)) {
  dev_err(&bgx->pdev->dev, "SMU RX not idle\n");
  return -1;
 }


 if (bgx_poll_reg(bgx, lmacid, BGX_SMUX_CTL, SMU_CTL_TX_IDLE, 0)) {
  dev_err(&bgx->pdev->dev, "SMU TX not idle\n");
  return -1;
 }


 cfg = bgx_reg_read(bgx, lmacid, BGX_SMUX_RX_CTL);

 cfg &= SMU_RX_CTL_STATUS;
 if (!cfg)
  return 0;




 bgx_lmac_xaui_init(bgx, lmac);

 return -1;
}
