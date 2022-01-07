
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cpsw_priv {TYPE_1__* cpsw; } ;
struct TYPE_2__ {int dev; } ;


 int cpsw_err (struct cpsw_priv*,int ,char*,int) ;
 int drv ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;
 int pm_runtime_put (int ) ;

void cpsw_ethtool_op_complete(struct net_device *ndev)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 int ret;

 ret = pm_runtime_put(priv->cpsw->dev);
 if (ret < 0)
  cpsw_err(priv, drv, "ethtool complete failed %d\n", ret);
}
