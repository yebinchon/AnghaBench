
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7180_state {int dummy; } ;


 int ADV7180_INPUT_CONTROL_INSEL_MASK ;
 int ADV7180_REG_INPUT_CONTROL ;
 int adv7180_read (struct adv7180_state*,int ) ;
 int adv7180_write (struct adv7180_state*,int ,int) ;

__attribute__((used)) static int adv7180_select_input(struct adv7180_state *state, unsigned int input)
{
 int ret;

 ret = adv7180_read(state, ADV7180_REG_INPUT_CONTROL);
 if (ret < 0)
  return ret;

 ret &= ~ADV7180_INPUT_CONTROL_INSEL_MASK;
 ret |= input;
 return adv7180_write(state, ADV7180_REG_INPUT_CONTROL, ret);
}
