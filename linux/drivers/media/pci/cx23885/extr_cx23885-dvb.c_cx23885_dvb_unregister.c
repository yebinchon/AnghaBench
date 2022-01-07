
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ frontend; } ;
struct vb2_dvb_frontend {TYPE_1__ dvb; } ;
struct TYPE_7__ {TYPE_2__* driver; } ;
struct i2c_client {TYPE_3__ dev; } ;
struct cx23885_tsport {int * gate_ctrl; int nr; TYPE_4__* dev; struct i2c_client* i2c_client_demod; struct i2c_client* i2c_client_tuner; struct i2c_client* i2c_client_sec; struct i2c_client* i2c_client_ci; int frontends; } ;
struct TYPE_8__ {int board; } ;
struct TYPE_6__ {int owner; } ;




 int altera_ci_release (TYPE_4__*,int ) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int module_put (int ) ;
 int netup_ci_exit (struct cx23885_tsport*) ;
 struct vb2_dvb_frontend* vb2_dvb_get_frontend (int *,int) ;
 int vb2_dvb_unregister_bus (int *) ;

int cx23885_dvb_unregister(struct cx23885_tsport *port)
{
 struct vb2_dvb_frontend *fe0;
 struct i2c_client *client;

 fe0 = vb2_dvb_get_frontend(&port->frontends, 1);

 if (fe0 && fe0->dvb.frontend)
  vb2_dvb_unregister_bus(&port->frontends);


 client = port->i2c_client_ci;
 if (client) {
  module_put(client->dev.driver->owner);
  i2c_unregister_device(client);
 }


 client = port->i2c_client_sec;
 if (client) {
  module_put(client->dev.driver->owner);
  i2c_unregister_device(client);
 }


 client = port->i2c_client_tuner;
 if (client) {
  module_put(client->dev.driver->owner);
  i2c_unregister_device(client);
 }


 client = port->i2c_client_demod;
 if (client) {
  module_put(client->dev.driver->owner);
  i2c_unregister_device(client);
 }

 switch (port->dev->board) {
 case 129:
  netup_ci_exit(port);
  break;
 case 128:
  altera_ci_release(port->dev, port->nr);
  break;
 }

 port->gate_ctrl = ((void*)0);

 return 0;
}
