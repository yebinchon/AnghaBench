
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {TYPE_1__* slaves; } ;
struct TYPE_2__ {scalar_t__ phy; } ;


 int EOPNOTSUPP ;
 int cpsw_slave_index (struct cpsw_common*,struct cpsw_priv*) ;
 int genphy_restart_aneg (scalar_t__) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;

int cpsw_nway_reset(struct net_device *ndev)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 struct cpsw_common *cpsw = priv->cpsw;
 int slave_no = cpsw_slave_index(cpsw, priv);

 if (cpsw->slaves[slave_no].phy)
  return genphy_restart_aneg(cpsw->slaves[slave_no].phy);
 else
  return -EOPNOTSUPP;
}
