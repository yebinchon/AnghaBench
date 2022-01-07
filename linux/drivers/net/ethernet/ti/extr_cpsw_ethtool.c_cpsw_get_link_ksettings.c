
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {TYPE_1__* slaves; } ;
struct TYPE_2__ {int phy; } ;


 int EOPNOTSUPP ;
 int cpsw_slave_index (struct cpsw_common*,struct cpsw_priv*) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;
 int phy_ethtool_ksettings_get (int ,struct ethtool_link_ksettings*) ;

int cpsw_get_link_ksettings(struct net_device *ndev,
       struct ethtool_link_ksettings *ecmd)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 struct cpsw_common *cpsw = priv->cpsw;
 int slave_no = cpsw_slave_index(cpsw, priv);

 if (!cpsw->slaves[slave_no].phy)
  return -EOPNOTSUPP;

 phy_ethtool_ksettings_get(cpsw->slaves[slave_no].phy, ecmd);
 return 0;
}
