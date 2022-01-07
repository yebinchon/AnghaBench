
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rk_priv_data {int phy_iface; TYPE_2__* ops; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int (* set_rmii_speed ) (struct rk_priv_data*,unsigned int) ;int (* set_rgmii_speed ) (struct rk_priv_data*,unsigned int) ;} ;
struct TYPE_3__ {struct device dev; } ;







 int dev_err (struct device*,char*,int) ;
 int stub1 (struct rk_priv_data*,unsigned int) ;
 int stub2 (struct rk_priv_data*,unsigned int) ;

__attribute__((used)) static void rk_fix_speed(void *priv, unsigned int speed)
{
 struct rk_priv_data *bsp_priv = priv;
 struct device *dev = &bsp_priv->pdev->dev;

 switch (bsp_priv->phy_iface) {
 case 132:
 case 131:
 case 130:
 case 129:
  bsp_priv->ops->set_rgmii_speed(bsp_priv, speed);
  break;
 case 128:
  bsp_priv->ops->set_rmii_speed(bsp_priv, speed);
  break;
 default:
  dev_err(dev, "unsupported interface %d", bsp_priv->phy_iface);
 }
}
