
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv748x_state {int * regmap; int * i2c_clients; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int * adv748x_regmap_cnf ;
 int adv_err (struct adv748x_state*,char*,int,int) ;
 int devm_regmap_init_i2c (int ,int *) ;

__attribute__((used)) static int adv748x_configure_regmap(struct adv748x_state *state, int region)
{
 int err;

 if (!state->i2c_clients[region])
  return -ENODEV;

 state->regmap[region] =
  devm_regmap_init_i2c(state->i2c_clients[region],
         &adv748x_regmap_cnf[region]);

 if (IS_ERR(state->regmap[region])) {
  err = PTR_ERR(state->regmap[region]);
  adv_err(state,
   "Error initializing regmap %d with error %d\n",
   region, err);
  return -EINVAL;
 }

 return 0;
}
