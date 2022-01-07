
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dev_flags; } ;
struct net_device {int dummy; } ;
typedef int phy_interface_t ;


 int EINVAL ;
 int phy_attach_direct (struct net_device*,struct phy_device*,int ,int ) ;
 scalar_t__ phy_interrupt_is_valid (struct phy_device*) ;
 int phy_prepare_link (struct phy_device*,void (*) (struct net_device*)) ;
 int phy_request_interrupt (struct phy_device*) ;

int phy_connect_direct(struct net_device *dev, struct phy_device *phydev,
         void (*handler)(struct net_device *),
         phy_interface_t interface)
{
 int rc;

 if (!dev)
  return -EINVAL;

 rc = phy_attach_direct(dev, phydev, phydev->dev_flags, interface);
 if (rc)
  return rc;

 phy_prepare_link(phydev, handler);
 if (phy_interrupt_is_valid(phydev))
  phy_request_interrupt(phydev);

 return 0;
}
