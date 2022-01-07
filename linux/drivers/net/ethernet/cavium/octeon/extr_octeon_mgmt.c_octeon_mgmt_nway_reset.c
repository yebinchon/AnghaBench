
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ phydev; } ;


 int CAP_NET_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;
 int capable (int ) ;
 int phy_start_aneg (scalar_t__) ;

__attribute__((used)) static int octeon_mgmt_nway_reset(struct net_device *dev)
{
 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 if (dev->phydev)
  return phy_start_aneg(dev->phydev);

 return -EOPNOTSUPP;
}
