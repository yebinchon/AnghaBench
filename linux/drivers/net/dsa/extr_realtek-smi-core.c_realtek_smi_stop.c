
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_smi {int mdc; int mdio; } ;


 int gpiod_direction_input (int ) ;
 int gpiod_set_value (int ,int) ;
 int realtek_smi_clk_delay (struct realtek_smi*) ;

__attribute__((used)) static void realtek_smi_stop(struct realtek_smi *smi)
{
 realtek_smi_clk_delay(smi);
 gpiod_set_value(smi->mdio, 0);
 gpiod_set_value(smi->mdc, 1);
 realtek_smi_clk_delay(smi);
 gpiod_set_value(smi->mdio, 1);
 realtek_smi_clk_delay(smi);
 gpiod_set_value(smi->mdc, 1);
 realtek_smi_clk_delay(smi);
 gpiod_set_value(smi->mdc, 0);
 realtek_smi_clk_delay(smi);
 gpiod_set_value(smi->mdc, 1);


 realtek_smi_clk_delay(smi);
 gpiod_set_value(smi->mdc, 0);
 realtek_smi_clk_delay(smi);
 gpiod_set_value(smi->mdc, 1);


 gpiod_direction_input(smi->mdio);
 gpiod_direction_input(smi->mdc);
}
