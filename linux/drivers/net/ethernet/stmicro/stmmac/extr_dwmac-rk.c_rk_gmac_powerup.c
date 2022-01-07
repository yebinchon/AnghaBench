
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rk_priv_data {int phy_iface; scalar_t__ integrated_phy; TYPE_2__* ops; int rx_delay; int tx_delay; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int (* set_to_rmii ) (struct rk_priv_data*) ;int (* set_to_rgmii ) (struct rk_priv_data*,int ,int ) ;} ;
struct TYPE_3__ {struct device dev; } ;







 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int gmac_clk_enable (struct rk_priv_data*,int) ;
 int phy_power_on (struct rk_priv_data*,int) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int rk_gmac_integrated_phy_powerup (struct rk_priv_data*) ;
 int stub1 (struct rk_priv_data*,int ,int ) ;
 int stub2 (struct rk_priv_data*,int ,int ) ;
 int stub3 (struct rk_priv_data*,int ,int ) ;
 int stub4 (struct rk_priv_data*,int ,int ) ;
 int stub5 (struct rk_priv_data*) ;

__attribute__((used)) static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
{
 int ret;
 struct device *dev = &bsp_priv->pdev->dev;

 ret = gmac_clk_enable(bsp_priv, 1);
 if (ret)
  return ret;


 switch (bsp_priv->phy_iface) {
 case 132:
  dev_info(dev, "init for RGMII\n");
  bsp_priv->ops->set_to_rgmii(bsp_priv, bsp_priv->tx_delay,
         bsp_priv->rx_delay);
  break;
 case 131:
  dev_info(dev, "init for RGMII_ID\n");
  bsp_priv->ops->set_to_rgmii(bsp_priv, 0, 0);
  break;
 case 130:
  dev_info(dev, "init for RGMII_RXID\n");
  bsp_priv->ops->set_to_rgmii(bsp_priv, bsp_priv->tx_delay, 0);
  break;
 case 129:
  dev_info(dev, "init for RGMII_TXID\n");
  bsp_priv->ops->set_to_rgmii(bsp_priv, 0, bsp_priv->rx_delay);
  break;
 case 128:
  dev_info(dev, "init for RMII\n");
  bsp_priv->ops->set_to_rmii(bsp_priv);
  break;
 default:
  dev_err(dev, "NO interface defined!\n");
 }

 ret = phy_power_on(bsp_priv, 1);
 if (ret) {
  gmac_clk_enable(bsp_priv, 0);
  return ret;
 }

 pm_runtime_enable(dev);
 pm_runtime_get_sync(dev);

 if (bsp_priv->integrated_phy)
  rk_gmac_integrated_phy_powerup(bsp_priv);

 return 0;
}
