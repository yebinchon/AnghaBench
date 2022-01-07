
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_timers {int regmap; int max_arr; } ;


 int TIM_ARR ;
 int regmap_read (int ,int ,int *) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void stm32_timers_get_arr_size(struct stm32_timers *ddata)
{




 regmap_write(ddata->regmap, TIM_ARR, ~0L);
 regmap_read(ddata->regmap, TIM_ARR, &ddata->max_arr);
 regmap_write(ddata->regmap, TIM_ARR, 0x0);
}
