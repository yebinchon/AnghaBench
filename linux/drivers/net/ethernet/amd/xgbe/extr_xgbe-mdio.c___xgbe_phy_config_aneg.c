
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ autoneg; } ;
struct TYPE_4__ {int (* an_config ) (struct xgbe_prv_data*) ;} ;
struct TYPE_5__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {int an_mutex; int dev_state; int an_irq; void* kx_state; void* kr_state; void* an_state; void* an_result; int netdev; int kr_redrv; TYPE_3__ phy; TYPE_2__ phy_if; int link_check; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int EINVAL ;
 void* XGBE_AN_READY ;
 int XGBE_LINK_ERR ;
 int XGBE_LINK_INIT ;
 int XGBE_MODE_KR ;
 int XGBE_MODE_KX_1000 ;
 int XGBE_MODE_KX_2500 ;
 int XGBE_MODE_SFI ;
 int XGBE_MODE_SGMII_100 ;
 int XGBE_MODE_SGMII_1000 ;
 int XGBE_MODE_X ;
 void* XGBE_RX_BPA ;
 int clear_bit (int ,int *) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int jiffies ;
 int link ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct xgbe_prv_data*) ;
 int xgbe_an_clear_interrupts_all (struct xgbe_prv_data*) ;
 int xgbe_an_disable_all (struct xgbe_prv_data*) ;
 int xgbe_an_init (struct xgbe_prv_data*) ;
 int xgbe_an_restart (struct xgbe_prv_data*) ;
 int xgbe_phy_config_fixed (struct xgbe_prv_data*) ;
 int xgbe_set_mode (struct xgbe_prv_data*,int ) ;
 scalar_t__ xgbe_use_mode (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static int __xgbe_phy_config_aneg(struct xgbe_prv_data *pdata, bool set_mode)
{
 int ret;

 mutex_lock(&pdata->an_mutex);

 set_bit(XGBE_LINK_INIT, &pdata->dev_state);
 pdata->link_check = jiffies;

 ret = pdata->phy_if.phy_impl.an_config(pdata);
 if (ret)
  goto out;

 if (pdata->phy.autoneg != AUTONEG_ENABLE) {
  ret = xgbe_phy_config_fixed(pdata);
  if (ret || !pdata->kr_redrv)
   goto out;

  netif_dbg(pdata, link, pdata->netdev, "AN redriver support\n");
 } else {
  netif_dbg(pdata, link, pdata->netdev, "AN PHY configuration\n");
 }


 disable_irq(pdata->an_irq);

 if (set_mode) {

  if (xgbe_use_mode(pdata, XGBE_MODE_KR)) {
   xgbe_set_mode(pdata, XGBE_MODE_KR);
  } else if (xgbe_use_mode(pdata, XGBE_MODE_KX_2500)) {
   xgbe_set_mode(pdata, XGBE_MODE_KX_2500);
  } else if (xgbe_use_mode(pdata, XGBE_MODE_KX_1000)) {
   xgbe_set_mode(pdata, XGBE_MODE_KX_1000);
  } else if (xgbe_use_mode(pdata, XGBE_MODE_SFI)) {
   xgbe_set_mode(pdata, XGBE_MODE_SFI);
  } else if (xgbe_use_mode(pdata, XGBE_MODE_X)) {
   xgbe_set_mode(pdata, XGBE_MODE_X);
  } else if (xgbe_use_mode(pdata, XGBE_MODE_SGMII_1000)) {
   xgbe_set_mode(pdata, XGBE_MODE_SGMII_1000);
  } else if (xgbe_use_mode(pdata, XGBE_MODE_SGMII_100)) {
   xgbe_set_mode(pdata, XGBE_MODE_SGMII_100);
  } else {
   enable_irq(pdata->an_irq);
   ret = -EINVAL;
   goto out;
  }
 }


 xgbe_an_disable_all(pdata);


 xgbe_an_clear_interrupts_all(pdata);

 pdata->an_result = XGBE_AN_READY;
 pdata->an_state = XGBE_AN_READY;
 pdata->kr_state = XGBE_RX_BPA;
 pdata->kx_state = XGBE_RX_BPA;


 enable_irq(pdata->an_irq);

 xgbe_an_init(pdata);
 xgbe_an_restart(pdata);

out:
 if (ret)
  set_bit(XGBE_LINK_ERR, &pdata->dev_state);
 else
  clear_bit(XGBE_LINK_ERR, &pdata->dev_state);

 mutex_unlock(&pdata->an_mutex);

 return ret;
}
