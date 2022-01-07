
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc90522_state {int tuner_i2c; } ;
struct i2c_client {int dummy; } ;


 struct tc90522_state* cfg_to_state (int ) ;
 int i2c_del_adapter (int *) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct tc90522_state*) ;

__attribute__((used)) static int tc90522_remove(struct i2c_client *client)
{
 struct tc90522_state *state;

 state = cfg_to_state(i2c_get_clientdata(client));
 i2c_del_adapter(&state->tuner_i2c);
 kfree(state);
 return 0;
}
