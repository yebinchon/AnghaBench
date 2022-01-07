
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u64 ;
struct lmac {scalar_t__ lmac_type; int * phydev; int dmacs; int is_sgmii; scalar_t__ check_link; int dwork; } ;
struct bgx {struct lmac* lmac; } ;


 int BGX_CMRX_CFG ;
 int BGX_CMRX_RX_FIFO_LEN ;
 int BGX_CMRX_TX_FIFO_LEN ;
 int BGX_GMP_PCS_MRX_CTL ;
 scalar_t__ BGX_MODE_10G_KR ;
 scalar_t__ BGX_MODE_40G_KR ;
 scalar_t__ BGX_MODE_XFI ;
 scalar_t__ BGX_MODE_XLAUI ;
 int BGX_SPUX_CONTROL1 ;
 int CMR_EN ;
 int CMR_PKT_RX_EN ;
 int CMR_PKT_TX_EN ;
 int PCS_MRX_CTL_PWR_DN ;
 int SPU_CTL_LOW_POWER ;
 int bgx_flush_dmac_cam_filter (struct bgx*,size_t) ;
 int bgx_poll_reg (struct bgx*,size_t,int ,int ,int) ;
 int bgx_reg_modify (struct bgx*,size_t,int ,int ) ;
 int bgx_reg_read (struct bgx*,size_t,int ) ;
 int bgx_reg_write (struct bgx*,size_t,int ,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (scalar_t__) ;
 int kfree (int ) ;
 int phy_disconnect (int *) ;

__attribute__((used)) static void bgx_lmac_disable(struct bgx *bgx, u8 lmacid)
{
 struct lmac *lmac;
 u64 cfg;

 lmac = &bgx->lmac[lmacid];
 if (lmac->check_link) {

  cancel_delayed_work_sync(&lmac->dwork);
  destroy_workqueue(lmac->check_link);
 }


 cfg = bgx_reg_read(bgx, lmacid, BGX_CMRX_CFG);
 cfg &= ~CMR_PKT_RX_EN;
 bgx_reg_write(bgx, lmacid, BGX_CMRX_CFG, cfg);


 bgx_poll_reg(bgx, lmacid, BGX_CMRX_RX_FIFO_LEN, (u64)0x1FFF, 1);
 bgx_poll_reg(bgx, lmacid, BGX_CMRX_TX_FIFO_LEN, (u64)0x3FFF, 1);


 cfg = bgx_reg_read(bgx, lmacid, BGX_CMRX_CFG);
 cfg &= ~CMR_PKT_TX_EN;
 bgx_reg_write(bgx, lmacid, BGX_CMRX_CFG, cfg);


        if (!lmac->is_sgmii)
                bgx_reg_modify(bgx, lmacid,
                               BGX_SPUX_CONTROL1, SPU_CTL_LOW_POWER);
        else
                bgx_reg_modify(bgx, lmacid,
                               BGX_GMP_PCS_MRX_CTL, PCS_MRX_CTL_PWR_DN);


 cfg = bgx_reg_read(bgx, lmacid, BGX_CMRX_CFG);
 cfg &= ~CMR_EN;
 bgx_reg_write(bgx, lmacid, BGX_CMRX_CFG, cfg);

 bgx_flush_dmac_cam_filter(bgx, lmacid);
 kfree(lmac->dmacs);

 if ((lmac->lmac_type != BGX_MODE_XFI) &&
     (lmac->lmac_type != BGX_MODE_XLAUI) &&
     (lmac->lmac_type != BGX_MODE_40G_KR) &&
     (lmac->lmac_type != BGX_MODE_10G_KR) && lmac->phydev)
  phy_disconnect(lmac->phydev);

 lmac->phydev = ((void*)0);
}
