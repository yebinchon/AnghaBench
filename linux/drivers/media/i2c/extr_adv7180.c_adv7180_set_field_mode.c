
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adv7180_state {scalar_t__ field; TYPE_1__* chip_info; } ;
struct TYPE_2__ {int flags; } ;


 int ADV7180_FLAG_I2P ;
 int ADV7180_FLAG_MIPI_CSI2 ;
 scalar_t__ V4L2_FIELD_NONE ;
 int adv7180_csi_write (struct adv7180_state*,int,int) ;
 int adv7180_vpp_write (struct adv7180_state*,int,int) ;

__attribute__((used)) static int adv7180_set_field_mode(struct adv7180_state *state)
{
 if (!(state->chip_info->flags & ADV7180_FLAG_I2P))
  return 0;

 if (state->field == V4L2_FIELD_NONE) {
  if (state->chip_info->flags & ADV7180_FLAG_MIPI_CSI2) {
   adv7180_csi_write(state, 0x01, 0x20);
   adv7180_csi_write(state, 0x02, 0x28);
   adv7180_csi_write(state, 0x03, 0x38);
   adv7180_csi_write(state, 0x04, 0x30);
   adv7180_csi_write(state, 0x05, 0x30);
   adv7180_csi_write(state, 0x06, 0x80);
   adv7180_csi_write(state, 0x07, 0x70);
   adv7180_csi_write(state, 0x08, 0x50);
  }
  adv7180_vpp_write(state, 0xa3, 0x00);
  adv7180_vpp_write(state, 0x5b, 0x00);
  adv7180_vpp_write(state, 0x55, 0x80);
 } else {
  if (state->chip_info->flags & ADV7180_FLAG_MIPI_CSI2) {
   adv7180_csi_write(state, 0x01, 0x18);
   adv7180_csi_write(state, 0x02, 0x18);
   adv7180_csi_write(state, 0x03, 0x30);
   adv7180_csi_write(state, 0x04, 0x20);
   adv7180_csi_write(state, 0x05, 0x28);
   adv7180_csi_write(state, 0x06, 0x40);
   adv7180_csi_write(state, 0x07, 0x58);
   adv7180_csi_write(state, 0x08, 0x30);
  }
  adv7180_vpp_write(state, 0xa3, 0x70);
  adv7180_vpp_write(state, 0x5b, 0x80);
  adv7180_vpp_write(state, 0x55, 0x00);
 }

 return 0;
}
