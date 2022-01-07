
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int of_node; } ;
struct mdio_device {TYPE_2__ dev; } ;
struct TYPE_7__ {int * ops; TYPE_2__* dev; int regmap; } ;
struct lan9303_mdio {TYPE_1__ chip; struct mdio_device* device; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*,int) ;
 int dev_info (TYPE_2__*,char*) ;
 int dev_set_drvdata (TYPE_2__*,struct lan9303_mdio*) ;
 struct lan9303_mdio* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_regmap_init (TYPE_2__*,int *,struct lan9303_mdio*,int *) ;
 int lan9303_mdio_phy_ops ;
 int lan9303_mdio_regmap_config ;
 int lan9303_probe (TYPE_1__*,int ) ;

__attribute__((used)) static int lan9303_mdio_probe(struct mdio_device *mdiodev)
{
 struct lan9303_mdio *sw_dev;
 int ret;

 sw_dev = devm_kzalloc(&mdiodev->dev, sizeof(struct lan9303_mdio),
         GFP_KERNEL);
 if (!sw_dev)
  return -ENOMEM;

 sw_dev->chip.regmap = devm_regmap_init(&mdiodev->dev, ((void*)0), sw_dev,
            &lan9303_mdio_regmap_config);
 if (IS_ERR(sw_dev->chip.regmap)) {
  ret = PTR_ERR(sw_dev->chip.regmap);
  dev_err(&mdiodev->dev, "regmap init failed: %d\n", ret);
  return ret;
 }


 sw_dev->device = mdiodev;
 dev_set_drvdata(&mdiodev->dev, sw_dev);
 sw_dev->chip.dev = &mdiodev->dev;

 sw_dev->chip.ops = &lan9303_mdio_phy_ops;

 ret = lan9303_probe(&sw_dev->chip, mdiodev->dev.of_node);
 if (ret != 0)
  return ret;

 dev_info(&mdiodev->dev, "LAN9303 MDIO driver loaded successfully\n");

 return 0;
}
