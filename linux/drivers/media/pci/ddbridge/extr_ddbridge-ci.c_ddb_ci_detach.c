
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ddb_port {TYPE_2__* en; scalar_t__ en_freedata; TYPE_1__* dvb; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int ** i2c_client; scalar_t__ dev; } ;


 int dvb_ca_en50221_release (TYPE_2__*) ;
 int dvb_module_release (int *) ;
 int dvb_unregister_device (scalar_t__) ;
 int kfree (int ) ;

void ddb_ci_detach(struct ddb_port *port)
{
 if (port->dvb[0].dev)
  dvb_unregister_device(port->dvb[0].dev);
 if (port->en) {
  dvb_ca_en50221_release(port->en);

  dvb_module_release(port->dvb[0].i2c_client[0]);
  port->dvb[0].i2c_client[0] = ((void*)0);


  if (port->en_freedata)
   kfree(port->en->data);

  port->en = ((void*)0);
 }
}
