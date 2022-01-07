
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw9910_priv {int pdn_gpio; int clk; } ;


 int clk_disable_unprepare (int ) ;
 int tw9910_set_gpio_value (int ,int) ;

__attribute__((used)) static int tw9910_power_off(struct tw9910_priv *priv)
{
 clk_disable_unprepare(priv->clk);
 tw9910_set_gpio_value(priv->pdn_gpio, 1);

 return 0;
}
