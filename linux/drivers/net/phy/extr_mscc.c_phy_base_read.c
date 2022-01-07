
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vsc8531_private {int base_addr; } ;
struct TYPE_3__ {TYPE_2__* bus; int dev; } ;
struct phy_device {TYPE_1__ mdio; struct vsc8531_private* priv; } ;
struct TYPE_4__ {int mdio_lock; } ;


 int __mdiobus_read (TYPE_2__*,int ,int ) ;
 int dev_err (int *,char*) ;
 int dump_stack () ;
 int mutex_is_locked (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int phy_base_read(struct phy_device *phydev, u32 regnum)
{
 struct vsc8531_private *priv = phydev->priv;

 if (unlikely(!mutex_is_locked(&phydev->mdio.bus->mdio_lock))) {
  dev_err(&phydev->mdio.dev, "MDIO bus lock not held!\n");
  dump_stack();
 }

 return __mdiobus_read(phydev->mdio.bus, priv->base_addr, regnum);
}
