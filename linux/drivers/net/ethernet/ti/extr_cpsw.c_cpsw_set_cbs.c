
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tc_cbs_qopt_offload {int idleslope; scalar_t__ enable; int queue; } ;
struct net_device {int num_tc; } ;
struct cpsw_slave {TYPE_1__* phy; } ;
struct cpsw_priv {int shp_cfg_speed; int dev; int * fifo_bw; int ndev; struct cpsw_common* cpsw; } ;
struct cpsw_common {int dev; struct cpsw_slave* slaves; } ;
struct TYPE_2__ {int speed; scalar_t__ link; } ;


 int EINVAL ;
 int cpsw_set_fifo_rlimit (struct cpsw_priv*,int,int ) ;
 size_t cpsw_slave_index (struct cpsw_common*,struct cpsw_priv*) ;
 int cpsw_tc_to_fifo (int,int ) ;
 int dev_err (int ,char*,...) ;
 int dev_warn (int ,char*) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;
 int netdev_txq_to_tc (int ,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static int cpsw_set_cbs(struct net_device *ndev,
   struct tc_cbs_qopt_offload *qopt)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 struct cpsw_common *cpsw = priv->cpsw;
 struct cpsw_slave *slave;
 int prev_speed = 0;
 int tc, ret, fifo;
 u32 bw = 0;

 tc = netdev_txq_to_tc(priv->ndev, qopt->queue);





 fifo = cpsw_tc_to_fifo(tc, ndev->num_tc);
 if (!fifo) {
  dev_err(priv->dev, "Last tc%d can't be rate limited", tc);
  return -EINVAL;
 }


 if (!qopt->enable && !priv->fifo_bw[fifo])
  return 0;


 slave = &cpsw->slaves[cpsw_slave_index(cpsw, priv)];
 if (slave->phy && slave->phy->link) {
  if (priv->shp_cfg_speed &&
      priv->shp_cfg_speed != slave->phy->speed)
   prev_speed = priv->shp_cfg_speed;

  priv->shp_cfg_speed = slave->phy->speed;
 }

 if (!priv->shp_cfg_speed) {
  dev_err(priv->dev, "Link speed is not known");
  return -1;
 }

 ret = pm_runtime_get_sync(cpsw->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(cpsw->dev);
  return ret;
 }

 bw = qopt->enable ? qopt->idleslope : 0;
 ret = cpsw_set_fifo_rlimit(priv, fifo, bw);
 if (ret) {
  priv->shp_cfg_speed = prev_speed;
  prev_speed = 0;
 }

 if (bw && prev_speed)
  dev_warn(priv->dev,
    "Speed was changed, CBS shaper speeds are changed!");

 pm_runtime_put_sync(cpsw->dev);
 return ret;
}
