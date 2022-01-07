
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct realtek_smi {int mdio; int mdc; } ;


 int gpiod_direction_input (int ) ;
 int gpiod_direction_output (int ,int ) ;
 int gpiod_get_value (int ) ;
 int gpiod_set_value (int ,int) ;
 int realtek_smi_clk_delay (struct realtek_smi*) ;

__attribute__((used)) static void realtek_smi_read_bits(struct realtek_smi *smi, u32 len, u32 *data)
{
 gpiod_direction_input(smi->mdio);

 for (*data = 0; len > 0; len--) {
  u32 u;

  realtek_smi_clk_delay(smi);


  gpiod_set_value(smi->mdc, 1);
  realtek_smi_clk_delay(smi);
  u = !!gpiod_get_value(smi->mdio);
  gpiod_set_value(smi->mdc, 0);

  *data |= (u << (len - 1));
 }

 gpiod_direction_output(smi->mdio, 0);
}
