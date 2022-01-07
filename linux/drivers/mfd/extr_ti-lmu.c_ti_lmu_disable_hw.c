
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_lmu {scalar_t__ en_gpio; } ;


 int gpiod_set_value (scalar_t__,int ) ;

__attribute__((used)) static void ti_lmu_disable_hw(void *data)
{
 struct ti_lmu *lmu = data;
 if (lmu->en_gpio)
  gpiod_set_value(lmu->en_gpio, 0);
}
