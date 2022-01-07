
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct dsa_switch {int slave_mii_bus; } ;




 struct phy_device* mdiobus_get_phy (int ,int) ;

__attribute__((used)) static struct phy_device *b53_get_phy_device(struct dsa_switch *ds, int port)
{

 switch (port) {
 case 128:
 case 7:
 case 129:
  return ((void*)0);
 }

 return mdiobus_get_phy(ds->slave_mii_bus, port);
}
