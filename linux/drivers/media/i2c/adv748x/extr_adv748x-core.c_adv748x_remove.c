
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct adv748x_state {int mutex; int txb; int txa; int hdmi; int afe; } ;


 int adv748x_afe_cleanup (int *) ;
 int adv748x_csi2_cleanup (int *) ;
 int adv748x_dt_cleanup (struct adv748x_state*) ;
 int adv748x_hdmi_cleanup (int *) ;
 int adv748x_unregister_clients (struct adv748x_state*) ;
 struct adv748x_state* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static int adv748x_remove(struct i2c_client *client)
{
 struct adv748x_state *state = i2c_get_clientdata(client);

 adv748x_afe_cleanup(&state->afe);
 adv748x_hdmi_cleanup(&state->hdmi);

 adv748x_csi2_cleanup(&state->txa);
 adv748x_csi2_cleanup(&state->txb);

 adv748x_unregister_clients(state);
 adv748x_dt_cleanup(state);
 mutex_destroy(&state->mutex);

 return 0;
}
