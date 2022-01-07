
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct state {struct i2c_client** i2c_client; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct TYPE_3__ {int owner; } ;


 int AF9035_I2C_CLIENT_MAX ;
 struct state* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int module_put (int ) ;

__attribute__((used)) static void af9035_del_i2c_dev(struct dvb_usb_device *d)
{
 int num;
 struct state *state = d_to_priv(d);
 struct usb_interface *intf = d->intf;
 struct i2c_client *client;


 num = AF9035_I2C_CLIENT_MAX;
 while (num--) {
  if (state->i2c_client[num] != ((void*)0))
   break;
 }

 dev_dbg(&intf->dev, "num=%d\n", num);

 if (num == -1) {
  dev_err(&intf->dev, "I2C client out of index\n");
  goto err;
 }

 client = state->i2c_client[num];


 module_put(client->dev.driver->owner);


 i2c_unregister_device(client);

 state->i2c_client[num] = ((void*)0);
 return;
err:
 dev_dbg(&intf->dev, "failed\n");
}
