
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtl2830_platform_data {int (* get_i2c_adapter ) (struct i2c_client*) ;int (* get_dvb_frontend ) (struct i2c_client*) ;} ;
struct rtl28xxu_dev {int tuner; struct i2c_client* i2c_client_demod; int demod_i2c_adapter; int tuner_name; struct rtl2830_platform_data rtl2830_platform_data; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct i2c_board_info {int addr; int type; struct rtl2830_platform_data* platform_data; } ;
struct dvb_usb_device {TYPE_3__* intf; int i2c_adap; } ;
struct dvb_usb_adapter {int * fe; } ;
typedef int board_info ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int owner; } ;


 int ENODEV ;
 int I2C_NAME_SIZE ;



 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct rtl28xxu_dev* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int ) ;
 struct i2c_client* i2c_new_device (int *,struct i2c_board_info*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int request_module (char*,int ) ;
 struct rtl2830_platform_data rtl2830_mt2060_platform_data ;
 struct rtl2830_platform_data rtl2830_mxl5005s_platform_data ;
 struct rtl2830_platform_data rtl2830_qt1010_platform_data ;
 int strscpy (int ,char*,int ) ;
 int stub1 (struct i2c_client*) ;
 int stub2 (struct i2c_client*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int rtl2831u_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *d = adap_to_d(adap);
 struct rtl28xxu_dev *dev = d_to_priv(d);
 struct rtl2830_platform_data *pdata = &dev->rtl2830_platform_data;
 struct i2c_board_info board_info;
 struct i2c_client *client;
 int ret;

 dev_dbg(&d->intf->dev, "\n");

 switch (dev->tuner) {
 case 128:
  *pdata = rtl2830_qt1010_platform_data;
  break;
 case 130:
  *pdata = rtl2830_mt2060_platform_data;
  break;
 case 129:
  *pdata = rtl2830_mxl5005s_platform_data;
  break;
 default:
  dev_err(&d->intf->dev, "unknown tuner %s\n", dev->tuner_name);
  ret = -ENODEV;
  goto err;
 }


 memset(&board_info, 0, sizeof(board_info));
 strscpy(board_info.type, "rtl2830", I2C_NAME_SIZE);
 board_info.addr = 0x10;
 board_info.platform_data = pdata;
 request_module("%s", board_info.type);
 client = i2c_new_device(&d->i2c_adap, &board_info);
 if (client == ((void*)0) || client->dev.driver == ((void*)0)) {
  ret = -ENODEV;
  goto err;
 }

 if (!try_module_get(client->dev.driver->owner)) {
  i2c_unregister_device(client);
  ret = -ENODEV;
  goto err;
 }

 adap->fe[0] = pdata->get_dvb_frontend(client);
 dev->demod_i2c_adapter = pdata->get_i2c_adapter(client);

 dev->i2c_client_demod = client;

 return 0;
err:
 dev_dbg(&d->intf->dev, "failed=%d\n", ret);
 return ret;
}
