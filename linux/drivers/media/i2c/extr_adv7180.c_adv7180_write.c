
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7180_state {int client; int mutex; } ;


 int adv7180_select_page (struct adv7180_state*,unsigned int) ;
 int i2c_smbus_write_byte_data (int ,unsigned int,unsigned int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int adv7180_write(struct adv7180_state *state, unsigned int reg,
 unsigned int value)
{
 lockdep_assert_held(&state->mutex);
 adv7180_select_page(state, reg >> 8);
 return i2c_smbus_write_byte_data(state->client, reg & 0xff, value);
}
