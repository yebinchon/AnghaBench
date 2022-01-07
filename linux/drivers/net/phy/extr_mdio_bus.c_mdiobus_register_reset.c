
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reset_control {int dummy; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;
struct mdio_device {struct reset_control* reset_ctrl; TYPE_1__ dev; } ;


 int ENOENT ;
 int ENOTSUPP ;
 scalar_t__ IS_ERR (struct reset_control*) ;
 int PTR_ERR (struct reset_control*) ;
 struct reset_control* devm_reset_control_get_exclusive (TYPE_1__*,char*) ;

__attribute__((used)) static int mdiobus_register_reset(struct mdio_device *mdiodev)
{
 struct reset_control *reset = ((void*)0);

 if (mdiodev->dev.of_node)
  reset = devm_reset_control_get_exclusive(&mdiodev->dev,
        "phy");
 if (PTR_ERR(reset) == -ENOENT ||
     PTR_ERR(reset) == -ENOTSUPP)
  reset = ((void*)0);
 else if (IS_ERR(reset))
  return PTR_ERR(reset);

 mdiodev->reset_ctrl = reset;

 return 0;
}
