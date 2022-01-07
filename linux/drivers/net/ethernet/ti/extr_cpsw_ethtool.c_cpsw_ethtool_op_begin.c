
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {int dev; } ;


 int cpsw_err (struct cpsw_priv*,int ,char*,int) ;
 int drv ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;

int cpsw_ethtool_op_begin(struct net_device *ndev)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 struct cpsw_common *cpsw = priv->cpsw;
 int ret;

 ret = pm_runtime_get_sync(cpsw->dev);
 if (ret < 0) {
  cpsw_err(priv, drv, "ethtool begin failed %d\n", ret);
  pm_runtime_put_noidle(cpsw->dev);
 }

 return ret;
}
