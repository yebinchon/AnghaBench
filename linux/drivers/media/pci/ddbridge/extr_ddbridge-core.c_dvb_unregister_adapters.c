
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ddb_port {struct ddb_dvb* dvb; } ;
struct ddb_dvb {scalar_t__ adap_registered; int adap; } ;
struct ddb {struct ddb_port* port; TYPE_2__* link; } ;
struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {int port_num; } ;


 int dvb_unregister_adapter (int ) ;

__attribute__((used)) static void dvb_unregister_adapters(struct ddb *dev)
{
 int i;
 struct ddb_port *port;
 struct ddb_dvb *dvb;

 for (i = 0; i < dev->link[0].info->port_num; i++) {
  port = &dev->port[i];

  dvb = &port->dvb[0];
  if (dvb->adap_registered)
   dvb_unregister_adapter(dvb->adap);
  dvb->adap_registered = 0;

  dvb = &port->dvb[1];
  if (dvb->adap_registered)
   dvb_unregister_adapter(dvb->adap);
  dvb->adap_registered = 0;
 }
}
