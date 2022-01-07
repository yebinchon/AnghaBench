
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw9910_priv {scalar_t__ rstb_gpio; scalar_t__ pdn_gpio; scalar_t__ clk; int subdev; } ;
struct i2c_client {int dev; } ;


 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_info (int *,char*) ;
 scalar_t__ gpiod_get_optional (int *,char*,int ) ;
 int gpiod_put (scalar_t__) ;
 int tw9910_set_gpio_value (scalar_t__,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int tw9910_power_on(struct tw9910_priv *priv)
{
 struct i2c_client *client = v4l2_get_subdevdata(&priv->subdev);
 int ret;

 if (priv->clk) {
  ret = clk_prepare_enable(priv->clk);
  if (ret)
   return ret;
 }

 tw9910_set_gpio_value(priv->pdn_gpio, 0);







 priv->rstb_gpio = gpiod_get_optional(&client->dev, "rstb",
          GPIOD_OUT_LOW);
 if (IS_ERR(priv->rstb_gpio)) {
  dev_info(&client->dev, "Unable to get GPIO \"rstb\"");
  clk_disable_unprepare(priv->clk);
  tw9910_set_gpio_value(priv->pdn_gpio, 1);
  return PTR_ERR(priv->rstb_gpio);
 }

 if (priv->rstb_gpio) {
  tw9910_set_gpio_value(priv->rstb_gpio, 1);
  tw9910_set_gpio_value(priv->rstb_gpio, 0);

  gpiod_put(priv->rstb_gpio);
 }

 return 0;
}
