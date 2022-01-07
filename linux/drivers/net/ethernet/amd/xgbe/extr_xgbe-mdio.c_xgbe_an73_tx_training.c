
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* kr_training_post ) (struct xgbe_prv_data*) ;int (* kr_training_pre ) (struct xgbe_prv_data*) ;} ;
struct TYPE_4__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {unsigned int fec_ability; TYPE_2__ phy_if; int netdev; } ;
typedef enum xgbe_rx { ____Placeholder_xgbe_rx } xgbe_rx ;
typedef enum xgbe_an { ____Placeholder_xgbe_an } xgbe_an ;


 scalar_t__ MDIO_AN_ADVERTISE ;
 scalar_t__ MDIO_AN_LPA ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_PMAPMD ;
 unsigned int MDIO_PMA_10GBR_FECABLE_ABLE ;
 unsigned int MDIO_PMA_10GBR_FECABLE_ERRABLE ;
 scalar_t__ MDIO_PMA_10GBR_FECCTRL ;
 scalar_t__ MDIO_PMA_10GBR_PMD_CTRL ;
 int XGBE_AN_PAGE_RECEIVED ;
 unsigned int XGBE_KR_TRAINING_ENABLE ;
 unsigned int XGBE_KR_TRAINING_START ;
 int XGBE_RX_COMPLETE ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,scalar_t__) ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,scalar_t__,unsigned int) ;
 int link ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 int stub1 (struct xgbe_prv_data*) ;
 int stub2 (struct xgbe_prv_data*) ;
 int xgbe_in_kr_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static enum xgbe_an xgbe_an73_tx_training(struct xgbe_prv_data *pdata,
       enum xgbe_rx *state)
{
 unsigned int ad_reg, lp_reg, reg;

 *state = XGBE_RX_COMPLETE;


 if (!xgbe_in_kr_mode(pdata))
  return XGBE_AN_PAGE_RECEIVED;


 ad_reg = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE + 2);
 lp_reg = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_LPA + 2);

 reg = XMDIO_READ(pdata, MDIO_MMD_PMAPMD, MDIO_PMA_10GBR_FECCTRL);
 reg &= ~(MDIO_PMA_10GBR_FECABLE_ABLE | MDIO_PMA_10GBR_FECABLE_ERRABLE);
 if ((ad_reg & 0xc000) && (lp_reg & 0xc000))
  reg |= pdata->fec_ability;

 XMDIO_WRITE(pdata, MDIO_MMD_PMAPMD, MDIO_PMA_10GBR_FECCTRL, reg);


 if (pdata->phy_if.phy_impl.kr_training_pre)
  pdata->phy_if.phy_impl.kr_training_pre(pdata);

 reg = XMDIO_READ(pdata, MDIO_MMD_PMAPMD, MDIO_PMA_10GBR_PMD_CTRL);
 reg |= XGBE_KR_TRAINING_ENABLE;
 reg |= XGBE_KR_TRAINING_START;
 XMDIO_WRITE(pdata, MDIO_MMD_PMAPMD, MDIO_PMA_10GBR_PMD_CTRL, reg);

 netif_dbg(pdata, link, pdata->netdev,
    "KR training initiated\n");

 if (pdata->phy_if.phy_impl.kr_training_post)
  pdata->phy_if.phy_impl.kr_training_post(pdata);

 return XGBE_AN_PAGE_RECEIVED;
}
