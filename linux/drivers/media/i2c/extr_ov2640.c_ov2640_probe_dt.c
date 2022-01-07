
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov2640_priv {void* pwdn_gpio; void* resetb_gpio; } ;
struct i2c_client {int dev; } ;


 int ENOSYS ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 int PTR_ERR_OR_ZERO (void*) ;
 int dev_dbg (int *,char*,...) ;
 void* devm_gpiod_get_optional (int *,char*,int ) ;

__attribute__((used)) static int ov2640_probe_dt(struct i2c_client *client,
  struct ov2640_priv *priv)
{
 int ret;


 priv->resetb_gpio = devm_gpiod_get_optional(&client->dev, "resetb",
   GPIOD_OUT_LOW);

 if (!priv->resetb_gpio)
  dev_dbg(&client->dev, "resetb gpio is not assigned!\n");

 ret = PTR_ERR_OR_ZERO(priv->resetb_gpio);
 if (ret && ret != -ENOSYS) {
  dev_dbg(&client->dev,
   "Error %d while getting resetb gpio\n", ret);
  return ret;
 }


 priv->pwdn_gpio = devm_gpiod_get_optional(&client->dev, "pwdn",
   GPIOD_OUT_HIGH);

 if (!priv->pwdn_gpio)
  dev_dbg(&client->dev, "pwdn gpio is not assigned!\n");

 ret = PTR_ERR_OR_ZERO(priv->pwdn_gpio);
 if (ret && ret != -ENOSYS) {
  dev_dbg(&client->dev,
   "Error %d while getting pwdn gpio\n", ret);
  return ret;
 }

 return 0;
}
