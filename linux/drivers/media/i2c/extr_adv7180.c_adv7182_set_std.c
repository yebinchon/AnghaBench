
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7180_state {int dummy; } ;


 int ADV7182_REG_INPUT_VIDSEL ;
 int adv7180_write (struct adv7180_state*,int ,unsigned int) ;

__attribute__((used)) static int adv7182_set_std(struct adv7180_state *state, unsigned int std)
{
 return adv7180_write(state, ADV7182_REG_INPUT_VIDSEL, std << 4);
}
