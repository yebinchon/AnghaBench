
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; } ;
struct enetc_ndev_priv {int si; } ;


 int enetc_pf_ethtool_ops ;
 scalar_t__ enetc_si_is_pf (int ) ;
 int enetc_vf_ethtool_ops ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

void enetc_set_ethtool_ops(struct net_device *ndev)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);

 if (enetc_si_is_pf(priv->si))
  ndev->ethtool_ops = &enetc_pf_ethtool_ops;
 else
  ndev->ethtool_ops = &enetc_vf_ethtool_ops;
}
