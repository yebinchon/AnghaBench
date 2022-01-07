
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int dummy; } ;
struct net_device {int * ethtool_ops; } ;
struct lio {struct octeon_device* oct_dev; } ;


 struct lio* GET_LIO (struct net_device*) ;
 scalar_t__ OCTEON_CN23XX_VF (struct octeon_device*) ;
 int lio_ethtool_ops ;
 int lio_vf_ethtool_ops ;

void liquidio_set_ethtool_ops(struct net_device *netdev)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct = lio->oct_dev;

 if (OCTEON_CN23XX_VF(oct))
  netdev->ethtool_ops = &lio_vf_ethtool_ops;
 else
  netdev->ethtool_ops = &lio_ethtool_ops;
}
