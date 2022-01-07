
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7530_priv {int reg_mutex; int ds; int dev; int io_pwr; int core_pwr; } ;
struct mdio_device {int dev; } ;


 int dev_err (int ,char*,int) ;
 struct mt7530_priv* dev_get_drvdata (int *) ;
 int dsa_unregister_switch (int ) ;
 int mutex_destroy (int *) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void
mt7530_remove(struct mdio_device *mdiodev)
{
 struct mt7530_priv *priv = dev_get_drvdata(&mdiodev->dev);
 int ret = 0;

 ret = regulator_disable(priv->core_pwr);
 if (ret < 0)
  dev_err(priv->dev,
   "Failed to disable core power: %d\n", ret);

 ret = regulator_disable(priv->io_pwr);
 if (ret < 0)
  dev_err(priv->dev, "Failed to disable io pwr: %d\n",
   ret);

 dsa_unregister_switch(priv->ds);
 mutex_destroy(&priv->reg_mutex);
}
