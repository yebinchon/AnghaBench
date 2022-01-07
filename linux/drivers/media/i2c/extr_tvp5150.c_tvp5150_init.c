
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct gpio_desc {int dummy; } ;


 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 struct gpio_desc* devm_gpiod_get_optional (int *,char*,int ) ;
 int gpiod_set_value_cansleep (struct gpio_desc*,int ) ;
 int msleep (int) ;
 int ndelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tvp5150_init(struct i2c_client *c)
{
 struct gpio_desc *pdn_gpio;
 struct gpio_desc *reset_gpio;

 pdn_gpio = devm_gpiod_get_optional(&c->dev, "pdn", GPIOD_OUT_HIGH);
 if (IS_ERR(pdn_gpio))
  return PTR_ERR(pdn_gpio);

 if (pdn_gpio) {
  gpiod_set_value_cansleep(pdn_gpio, 0);

  msleep(20);
 }

 reset_gpio = devm_gpiod_get_optional(&c->dev, "reset", GPIOD_OUT_HIGH);
 if (IS_ERR(reset_gpio))
  return PTR_ERR(reset_gpio);

 if (reset_gpio) {

  ndelay(500);
  gpiod_set_value_cansleep(reset_gpio, 0);

  usleep_range(200, 250);
 }

 return 0;
}
