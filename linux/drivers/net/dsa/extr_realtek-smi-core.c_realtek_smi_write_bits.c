
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct realtek_smi {int mdc; int mdio; } ;


 int gpiod_set_value (int ,int) ;
 int realtek_smi_clk_delay (struct realtek_smi*) ;

__attribute__((used)) static void realtek_smi_write_bits(struct realtek_smi *smi, u32 data, u32 len)
{
 for (; len > 0; len--) {
  realtek_smi_clk_delay(smi);


  gpiod_set_value(smi->mdio, !!(data & (1 << (len - 1))));
  realtek_smi_clk_delay(smi);


  gpiod_set_value(smi->mdc, 1);
  realtek_smi_clk_delay(smi);
  gpiod_set_value(smi->mdc, 0);
 }
}
