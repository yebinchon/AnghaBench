
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv76xx_state {int * i2c_clients; int * regmap; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int * adv76xx_regmap_cnf ;
 int devm_regmap_init_i2c (int ,int *) ;
 int v4l_err (int ,char*,int,int) ;

__attribute__((used)) static int configure_regmap(struct adv76xx_state *state, int region)
{
 int err;

 if (!state->i2c_clients[region])
  return -ENODEV;

 state->regmap[region] =
  devm_regmap_init_i2c(state->i2c_clients[region],
         &adv76xx_regmap_cnf[region]);

 if (IS_ERR(state->regmap[region])) {
  err = PTR_ERR(state->regmap[region]);
  v4l_err(state->i2c_clients[region],
   "Error initializing regmap %d with error %d\n",
   region, err);
  return -EINVAL;
 }

 return 0;
}
