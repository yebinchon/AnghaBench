
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov7251 {int enable_gpio; int xclk; } ;


 int clk_disable_unprepare (int ) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int ov7251_regulators_disable (struct ov7251*) ;

__attribute__((used)) static void ov7251_set_power_off(struct ov7251 *ov7251)
{
 clk_disable_unprepare(ov7251->xclk);
 gpiod_set_value_cansleep(ov7251->enable_gpio, 0);
 ov7251_regulators_disable(ov7251);
}
