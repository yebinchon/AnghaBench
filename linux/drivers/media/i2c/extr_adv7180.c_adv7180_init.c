
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7180_state {int dummy; } ;


 int ADV7180_EXTENDED_OUTPUT_CONTROL_NTSCDIS ;
 int ADV7180_NTSC_V_BIT_END_MANUAL_NVEND ;
 int ADV7180_REG_EXTENDED_OUTPUT_CONTROL ;
 int ADV7180_REG_NTSC_V_BIT_END ;
 int adv7180_write (struct adv7180_state*,int ,int ) ;

__attribute__((used)) static int adv7180_init(struct adv7180_state *state)
{
 int ret;


 ret = adv7180_write(state, ADV7180_REG_EXTENDED_OUTPUT_CONTROL,
   ADV7180_EXTENDED_OUTPUT_CONTROL_NTSCDIS);
 if (ret < 0)
  return ret;


 return adv7180_write(state, ADV7180_REG_NTSC_V_BIT_END,
     ADV7180_NTSC_V_BIT_END_MANUAL_NVEND);
}
