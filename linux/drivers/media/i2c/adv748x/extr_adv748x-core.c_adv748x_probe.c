
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_client {int dev; int adapter; } ;
struct TYPE_3__ {int port; int page; struct adv748x_state* state; } ;
struct adv748x_state {int mutex; int hdmi; int afe; TYPE_1__ txa; TYPE_1__ txb; struct i2c_client** i2c_clients; struct i2c_client* client; int * dev; } ;


 size_t ADV748X_PAGE_IO ;
 int ADV748X_PAGE_TXA ;
 int ADV748X_PAGE_TXB ;
 int ADV748X_PORT_TXA ;
 int ADV748X_PORT_TXB ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int adv748x_afe_cleanup (int *) ;
 int adv748x_afe_init (int *) ;
 int adv748x_configure_regmap (struct adv748x_state*,size_t) ;
 int adv748x_csi2_cleanup (TYPE_1__*) ;
 int adv748x_csi2_init (struct adv748x_state*,TYPE_1__*) ;
 int adv748x_dt_cleanup (struct adv748x_state*) ;
 int adv748x_hdmi_cleanup (int *) ;
 int adv748x_hdmi_init (int *) ;
 int adv748x_identify_chip (struct adv748x_state*) ;
 int adv748x_initialise_clients (struct adv748x_state*) ;
 int adv748x_parse_dt (struct adv748x_state*) ;
 int adv748x_reset (struct adv748x_state*) ;
 int adv748x_unregister_clients (struct adv748x_state*) ;
 int adv_err (struct adv748x_state*,char*) ;
 struct adv748x_state* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct adv748x_state*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static int adv748x_probe(struct i2c_client *client)
{
 struct adv748x_state *state;
 int ret;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 state = devm_kzalloc(&client->dev, sizeof(*state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;

 mutex_init(&state->mutex);

 state->dev = &client->dev;
 state->client = client;
 state->i2c_clients[ADV748X_PAGE_IO] = client;
 i2c_set_clientdata(client, state);






 state->txa.state = state->txb.state = state;
 state->txa.page = ADV748X_PAGE_TXA;
 state->txb.page = ADV748X_PAGE_TXB;
 state->txa.port = ADV748X_PORT_TXA;
 state->txb.port = ADV748X_PORT_TXB;


 ret = adv748x_parse_dt(state);
 if (ret) {
  adv_err(state, "Failed to parse device tree");
  goto err_free_mutex;
 }


 ret = adv748x_configure_regmap(state, ADV748X_PAGE_IO);
 if (ret) {
  adv_err(state, "Error configuring IO regmap region");
  goto err_cleanup_dt;
 }

 ret = adv748x_identify_chip(state);
 if (ret) {
  adv_err(state, "Failed to identify chip");
  goto err_cleanup_dt;
 }


 ret = adv748x_initialise_clients(state);
 if (ret) {
  adv_err(state, "Failed to setup client regmap pages");
  goto err_cleanup_clients;
 }


 ret = adv748x_reset(state);
 if (ret) {
  adv_err(state, "Failed to reset hardware");
  goto err_cleanup_clients;
 }


 ret = adv748x_hdmi_init(&state->hdmi);
 if (ret) {
  adv_err(state, "Failed to probe HDMI");
  goto err_cleanup_clients;
 }


 ret = adv748x_afe_init(&state->afe);
 if (ret) {
  adv_err(state, "Failed to probe AFE");
  goto err_cleanup_hdmi;
 }


 ret = adv748x_csi2_init(state, &state->txa);
 if (ret) {
  adv_err(state, "Failed to probe TXA");
  goto err_cleanup_afe;
 }


 ret = adv748x_csi2_init(state, &state->txb);
 if (ret) {
  adv_err(state, "Failed to probe TXB");
  goto err_cleanup_txa;
 }

 return 0;

err_cleanup_txa:
 adv748x_csi2_cleanup(&state->txa);
err_cleanup_afe:
 adv748x_afe_cleanup(&state->afe);
err_cleanup_hdmi:
 adv748x_hdmi_cleanup(&state->hdmi);
err_cleanup_clients:
 adv748x_unregister_clients(state);
err_cleanup_dt:
 adv748x_dt_cleanup(state);
err_free_mutex:
 mutex_destroy(&state->mutex);

 return ret;
}
