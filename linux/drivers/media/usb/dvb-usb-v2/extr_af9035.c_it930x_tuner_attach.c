
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct state {size_t it930x_addresses; int i2c_adapter_demod; } ;
struct si2157_config {int if_port; int fe; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct dvb_usb_adapter {int id; int * fe; } ;
typedef int si2157_config ;
struct TYPE_2__ {int tuner_i2c_addr; int tuner_if_port; } ;


 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct state* adap_to_priv (struct dvb_usb_adapter*) ;
 int af9035_add_i2c_dev (struct dvb_usb_device*,char*,int ,struct si2157_config*,int ) ;
 int dev_dbg (int *,char*,int) ;
 TYPE_1__* it930x_addresses_table ;
 int memset (struct si2157_config*,int ,int) ;

__attribute__((used)) static int it930x_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct state *state = adap_to_priv(adap);
 struct dvb_usb_device *d = adap_to_d(adap);
 struct usb_interface *intf = d->intf;
 int ret;
 struct si2157_config si2157_config;

 dev_dbg(&intf->dev, "adap->id=%d\n", adap->id);

 memset(&si2157_config, 0, sizeof(si2157_config));
 si2157_config.fe = adap->fe[0];
 si2157_config.if_port = it930x_addresses_table[state->it930x_addresses].tuner_if_port;
 ret = af9035_add_i2c_dev(d, "si2157",
     it930x_addresses_table[state->it930x_addresses].tuner_i2c_addr,
     &si2157_config, state->i2c_adapter_demod);
 if (ret)
  goto err;

 return 0;

err:
 dev_dbg(&intf->dev, "failed=%d\n", ret);

 return ret;
}
