
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_pauseparam {int dummy; } ;
struct axienet_local {int phylink; } ;


 struct axienet_local* netdev_priv (struct net_device*) ;
 int phylink_ethtool_set_pauseparam (int ,struct ethtool_pauseparam*) ;

__attribute__((used)) static int
axienet_ethtools_set_pauseparam(struct net_device *ndev,
    struct ethtool_pauseparam *epauseparm)
{
 struct axienet_local *lp = netdev_priv(ndev);

 return phylink_ethtool_set_pauseparam(lp->phylink, epauseparm);
}
