
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adv748x_state {int * i2c_clients; int client; } ;
struct TYPE_2__ {int default_addr; int name; } ;


 unsigned int ADV748X_PAGE_DPLL ;
 unsigned int ADV748X_PAGE_MAX ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adv748x_configure_regmap (struct adv748x_state*,unsigned int) ;
 TYPE_1__* adv748x_default_addresses ;
 int adv748x_set_slave_addresses (struct adv748x_state*) ;
 int adv_err (struct adv748x_state*,char*,unsigned int) ;
 int i2c_new_ancillary_device (int ,int ,int ) ;

__attribute__((used)) static int adv748x_initialise_clients(struct adv748x_state *state)
{
 unsigned int i;
 int ret;

 for (i = ADV748X_PAGE_DPLL; i < ADV748X_PAGE_MAX; ++i) {
  state->i2c_clients[i] = i2c_new_ancillary_device(
    state->client,
    adv748x_default_addresses[i].name,
    adv748x_default_addresses[i].default_addr);

  if (IS_ERR(state->i2c_clients[i])) {
   adv_err(state, "failed to create i2c client %u\n", i);
   return PTR_ERR(state->i2c_clients[i]);
  }

  ret = adv748x_configure_regmap(state, i);
  if (ret)
   return ret;
 }

 return adv748x_set_slave_addresses(state);
}
