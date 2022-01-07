
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7180_state {unsigned int register_page; int client; } ;


 int ADV7180_REG_CTRL ;
 int i2c_smbus_write_byte_data (int ,int ,unsigned int) ;

__attribute__((used)) static int adv7180_select_page(struct adv7180_state *state, unsigned int page)
{
 if (state->register_page != page) {
  i2c_smbus_write_byte_data(state->client, ADV7180_REG_CTRL,
   page);
  state->register_page = page;
 }

 return 0;
}
