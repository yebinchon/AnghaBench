
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usb_interface {int dev; } ;
struct state {struct i2c_client** i2c_client; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct i2c_board_info {void* platform_data; int type; int addr; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct TYPE_3__ {int owner; } ;


 int AF9035_I2C_CLIENT_MAX ;
 int ENODEV ;
 int I2C_NAME_SIZE ;
 struct state* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int request_module (char*,int ) ;
 int strscpy (int ,char const*,int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int af9035_add_i2c_dev(struct dvb_usb_device *d, const char *type,
  u8 addr, void *platform_data, struct i2c_adapter *adapter)
{
 int ret, num;
 struct state *state = d_to_priv(d);
 struct usb_interface *intf = d->intf;
 struct i2c_client *client;
 struct i2c_board_info board_info = {
  .addr = addr,
  .platform_data = platform_data,
 };

 strscpy(board_info.type, type, I2C_NAME_SIZE);


 for (num = 0; num < AF9035_I2C_CLIENT_MAX; num++) {
  if (state->i2c_client[num] == ((void*)0))
   break;
 }

 dev_dbg(&intf->dev, "num=%d\n", num);

 if (num == AF9035_I2C_CLIENT_MAX) {
  dev_err(&intf->dev, "I2C client out of index\n");
  ret = -ENODEV;
  goto err;
 }

 request_module("%s", board_info.type);


 client = i2c_new_device(adapter, &board_info);
 if (client == ((void*)0) || client->dev.driver == ((void*)0)) {
  ret = -ENODEV;
  goto err;
 }


 if (!try_module_get(client->dev.driver->owner)) {
  i2c_unregister_device(client);
  ret = -ENODEV;
  goto err;
 }

 state->i2c_client[num] = client;
 return 0;
err:
 dev_dbg(&intf->dev, "failed=%d\n", ret);
 return ret;
}
