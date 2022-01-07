
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9t112_priv {scalar_t__ standby_gpio; int clk; } ;


 int clk_disable_unprepare (int ) ;
 int gpiod_set_value (scalar_t__,int) ;
 int msleep (int) ;

__attribute__((used)) static int mt9t112_power_off(struct mt9t112_priv *priv)
{
 clk_disable_unprepare(priv->clk);
 if (priv->standby_gpio) {
  gpiod_set_value(priv->standby_gpio, 1);
  msleep(100);
 }

 return 0;
}
