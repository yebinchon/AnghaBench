
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* start ) (struct xgbe_prv_data*) ;int (* stop ) (struct xgbe_prv_data*) ;} ;
struct TYPE_4__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {scalar_t__ dev_irq; scalar_t__ an_irq; int phy_started; TYPE_2__ phy_if; int dev; int an_name; int tasklet_an; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int XGBE_MODE_KR ;
 int XGBE_MODE_KX_1000 ;
 int XGBE_MODE_KX_2500 ;
 int XGBE_MODE_SFI ;
 int XGBE_MODE_SGMII_100 ;
 int XGBE_MODE_SGMII_1000 ;
 int XGBE_MODE_X ;
 int devm_free_irq (int ,scalar_t__,struct xgbe_prv_data*) ;
 int devm_request_irq (int ,scalar_t__,int ,int ,int ,struct xgbe_prv_data*) ;
 int link ;
 int netdev_err (struct net_device*,char*) ;
 int netif_dbg (struct xgbe_prv_data*,int ,struct net_device*,char*) ;
 int stub1 (struct xgbe_prv_data*) ;
 int stub2 (struct xgbe_prv_data*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int xgbe_an_enable_interrupts (struct xgbe_prv_data*) ;
 int xgbe_an_init (struct xgbe_prv_data*) ;
 int xgbe_an_isr ;
 int xgbe_an_isr_task ;
 int xgbe_kr_mode (struct xgbe_prv_data*) ;
 int xgbe_kx_1000_mode (struct xgbe_prv_data*) ;
 int xgbe_kx_2500_mode (struct xgbe_prv_data*) ;
 int xgbe_phy_config_aneg (struct xgbe_prv_data*) ;
 int xgbe_sfi_mode (struct xgbe_prv_data*) ;
 int xgbe_sgmii_1000_mode (struct xgbe_prv_data*) ;
 int xgbe_sgmii_100_mode (struct xgbe_prv_data*) ;
 scalar_t__ xgbe_use_mode (struct xgbe_prv_data*,int ) ;
 int xgbe_x_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_phy_start(struct xgbe_prv_data *pdata)
{
 struct net_device *netdev = pdata->netdev;
 int ret;

 netif_dbg(pdata, link, pdata->netdev, "starting PHY\n");

 ret = pdata->phy_if.phy_impl.start(pdata);
 if (ret)
  return ret;


 if (pdata->dev_irq != pdata->an_irq) {
  tasklet_init(&pdata->tasklet_an, xgbe_an_isr_task,
        (unsigned long)pdata);

  ret = devm_request_irq(pdata->dev, pdata->an_irq,
           xgbe_an_isr, 0, pdata->an_name,
           pdata);
  if (ret) {
   netdev_err(netdev, "phy irq request failed\n");
   goto err_stop;
  }
 }




 if (xgbe_use_mode(pdata, XGBE_MODE_KR)) {
  xgbe_kr_mode(pdata);
 } else if (xgbe_use_mode(pdata, XGBE_MODE_KX_2500)) {
  xgbe_kx_2500_mode(pdata);
 } else if (xgbe_use_mode(pdata, XGBE_MODE_KX_1000)) {
  xgbe_kx_1000_mode(pdata);
 } else if (xgbe_use_mode(pdata, XGBE_MODE_SFI)) {
  xgbe_sfi_mode(pdata);
 } else if (xgbe_use_mode(pdata, XGBE_MODE_X)) {
  xgbe_x_mode(pdata);
 } else if (xgbe_use_mode(pdata, XGBE_MODE_SGMII_1000)) {
  xgbe_sgmii_1000_mode(pdata);
 } else if (xgbe_use_mode(pdata, XGBE_MODE_SGMII_100)) {
  xgbe_sgmii_100_mode(pdata);
 } else {
  ret = -EINVAL;
  goto err_irq;
 }


 pdata->phy_started = 1;

 xgbe_an_init(pdata);
 xgbe_an_enable_interrupts(pdata);

 return xgbe_phy_config_aneg(pdata);

err_irq:
 if (pdata->dev_irq != pdata->an_irq)
  devm_free_irq(pdata->dev, pdata->an_irq, pdata);

err_stop:
 pdata->phy_if.phy_impl.stop(pdata);

 return ret;
}
