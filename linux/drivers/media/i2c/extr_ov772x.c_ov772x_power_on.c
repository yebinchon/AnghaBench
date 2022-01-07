
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov772x_priv {scalar_t__ rstb_gpio; scalar_t__ clk; scalar_t__ pwdn_gpio; int subdev; } ;
struct i2c_client {int dev; } ;


 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_info (int *,char*) ;
 scalar_t__ gpiod_get_optional (int *,char*,int ) ;
 int gpiod_put (scalar_t__) ;
 int gpiod_set_value (scalar_t__,int) ;
 int usleep_range (int,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int ov772x_power_on(struct ov772x_priv *priv)
{
 struct i2c_client *client = v4l2_get_subdevdata(&priv->subdev);
 int ret;

 if (priv->clk) {
  ret = clk_prepare_enable(priv->clk);
  if (ret)
   return ret;
 }

 if (priv->pwdn_gpio) {
  gpiod_set_value(priv->pwdn_gpio, 1);
  usleep_range(500, 1000);
 }







 priv->rstb_gpio = gpiod_get_optional(&client->dev, "reset",
          GPIOD_OUT_LOW);
 if (IS_ERR(priv->rstb_gpio)) {
  dev_info(&client->dev, "Unable to get GPIO \"reset\"");
  clk_disable_unprepare(priv->clk);
  return PTR_ERR(priv->rstb_gpio);
 }

 if (priv->rstb_gpio) {
  gpiod_set_value(priv->rstb_gpio, 1);
  usleep_range(500, 1000);
  gpiod_set_value(priv->rstb_gpio, 0);
  usleep_range(500, 1000);

  gpiod_put(priv->rstb_gpio);
 }

 return 0;
}
