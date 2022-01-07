
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* fe; } ;
struct qm1d1c0042_state {TYPE_2__ cfg; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int * tuner_priv; } ;


 struct qm1d1c0042_state* cfg_to_state (int ) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct qm1d1c0042_state*) ;

__attribute__((used)) static int qm1d1c0042_remove(struct i2c_client *client)
{
 struct qm1d1c0042_state *state;

 state = cfg_to_state(i2c_get_clientdata(client));
 state->cfg.fe->tuner_priv = ((void*)0);
 kfree(state);
 return 0;
}
