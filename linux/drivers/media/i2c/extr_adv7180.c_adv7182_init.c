
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adv7180_state {TYPE_1__* chip_info; } ;
struct TYPE_2__ {int flags; } ;


 int ADV7180_DEFAULT_CSI_I2C_ADDR ;
 int ADV7180_DEFAULT_VPP_I2C_ADDR ;
 int ADV7180_FLAG_I2P ;
 int ADV7180_FLAG_MIPI_CSI2 ;
 int ADV7180_FLAG_V2 ;
 int ADV7180_REG_CSI_SLAVE_ADDR ;
 int ADV7180_REG_CTRL_2 ;
 int ADV7180_REG_EXTENDED_OUTPUT_CONTROL ;
 int ADV7180_REG_OUTPUT_CONTROL ;
 int ADV7180_REG_VPP_SLAVE_ADDR ;
 int adv7180_write (struct adv7180_state*,int,int) ;

__attribute__((used)) static int adv7182_init(struct adv7180_state *state)
{
 if (state->chip_info->flags & ADV7180_FLAG_MIPI_CSI2)
  adv7180_write(state, ADV7180_REG_CSI_SLAVE_ADDR,
   ADV7180_DEFAULT_CSI_I2C_ADDR << 1);

 if (state->chip_info->flags & ADV7180_FLAG_I2P)
  adv7180_write(state, ADV7180_REG_VPP_SLAVE_ADDR,
   ADV7180_DEFAULT_VPP_I2C_ADDR << 1);

 if (state->chip_info->flags & ADV7180_FLAG_V2) {

  adv7180_write(state, 0x0080, 0x51);
  adv7180_write(state, 0x0081, 0x51);
  adv7180_write(state, 0x0082, 0x68);
 }


 if (state->chip_info->flags & ADV7180_FLAG_MIPI_CSI2) {
  adv7180_write(state, ADV7180_REG_OUTPUT_CONTROL, 0x4e);
  adv7180_write(state, ADV7180_REG_EXTENDED_OUTPUT_CONTROL, 0x57);
  adv7180_write(state, ADV7180_REG_CTRL_2, 0xc0);
 } else {
  if (state->chip_info->flags & ADV7180_FLAG_V2)
   adv7180_write(state,
          ADV7180_REG_EXTENDED_OUTPUT_CONTROL,
          0x17);
  else
   adv7180_write(state,
          ADV7180_REG_EXTENDED_OUTPUT_CONTROL,
          0x07);
  adv7180_write(state, ADV7180_REG_OUTPUT_CONTROL, 0x0c);
  adv7180_write(state, ADV7180_REG_CTRL_2, 0x40);
 }

 adv7180_write(state, 0x0013, 0x00);

 return 0;
}
