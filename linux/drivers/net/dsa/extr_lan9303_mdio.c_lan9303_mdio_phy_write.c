
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct lan9303_mdio {TYPE_1__* device; } ;
struct lan9303 {int dev; } ;
struct TYPE_2__ {int bus; } ;


 struct lan9303_mdio* dev_get_drvdata (int ) ;
 int mdiobus_write_nested (int ,int,int,int ) ;

__attribute__((used)) static int lan9303_mdio_phy_write(struct lan9303 *chip, int phy, int reg,
      u16 val)
{
 struct lan9303_mdio *sw_dev = dev_get_drvdata(chip->dev);

 return mdiobus_write_nested(sw_dev->device->bus, phy, reg, val);
}
