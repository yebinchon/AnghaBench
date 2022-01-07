
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5k4ecgx {int supplies; scalar_t__ streaming; TYPE_1__* gpio; } ;
struct TYPE_2__ {int level; } ;


 size_t RST ;
 int S5K4ECGX_NUM_SUPPLIES ;
 size_t STBY ;
 int regulator_bulk_disable (int ,int ) ;
 scalar_t__ s5k4ecgx_gpio_set_value (struct s5k4ecgx*,size_t,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int __s5k4ecgx_power_off(struct s5k4ecgx *priv)
{
 if (s5k4ecgx_gpio_set_value(priv, RST, !priv->gpio[RST].level))
  usleep_range(30, 50);

 if (s5k4ecgx_gpio_set_value(priv, STBY, !priv->gpio[STBY].level))
  usleep_range(30, 50);

 priv->streaming = 0;

 return regulator_bulk_disable(S5K4ECGX_NUM_SUPPLIES, priv->supplies);
}
