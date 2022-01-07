
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5k6a3 {int dev; int clock; TYPE_1__* supplies; int gpio_reset; } ;
struct TYPE_2__ {int consumer; } ;


 int S5K6A3_NUM_SUPPLIES ;
 int clk_disable_unprepare (int ) ;
 int gpio_set_value (int ,int ) ;
 int pm_runtime_put (int ) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int __s5k6a3_power_off(struct s5k6a3 *sensor)
{
 int i;

 gpio_set_value(sensor->gpio_reset, 0);

 for (i = S5K6A3_NUM_SUPPLIES - 1; i >= 0; i--)
  regulator_disable(sensor->supplies[i].consumer);

 clk_disable_unprepare(sensor->clock);
 pm_runtime_put(sensor->dev);
 return 0;
}
