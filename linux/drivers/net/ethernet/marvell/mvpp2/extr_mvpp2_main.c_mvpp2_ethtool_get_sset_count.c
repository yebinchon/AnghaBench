
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mvpp2_port {int nrxqs; int ntxqs; } ;


 int EOPNOTSUPP ;
 int ETH_SS_STATS ;
 int MVPP2_N_ETHTOOL_STATS (int ,int ) ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mvpp2_ethtool_get_sset_count(struct net_device *dev, int sset)
{
 struct mvpp2_port *port = netdev_priv(dev);

 if (sset == ETH_SS_STATS)
  return MVPP2_N_ETHTOOL_STATS(port->ntxqs, port->nrxqs);

 return -EOPNOTSUPP;
}
