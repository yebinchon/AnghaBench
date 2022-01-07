
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* fe; } ;
struct mxl301rf_state {TYPE_2__ cfg; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int * tuner_priv; } ;


 struct mxl301rf_state* cfg_to_state (int ) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct mxl301rf_state*) ;

__attribute__((used)) static int mxl301rf_remove(struct i2c_client *client)
{
 struct mxl301rf_state *state;

 state = cfg_to_state(i2c_get_clientdata(client));
 state->cfg.fe->tuner_priv = ((void*)0);
 kfree(state);
 return 0;
}
