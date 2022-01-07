
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov772x_priv {scalar_t__ pwdn_gpio; int clk; } ;


 int clk_disable_unprepare (int ) ;
 int gpiod_set_value (scalar_t__,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ov772x_power_off(struct ov772x_priv *priv)
{
 clk_disable_unprepare(priv->clk);

 if (priv->pwdn_gpio) {
  gpiod_set_value(priv->pwdn_gpio, 0);
  usleep_range(500, 1000);
 }

 return 0;
}
