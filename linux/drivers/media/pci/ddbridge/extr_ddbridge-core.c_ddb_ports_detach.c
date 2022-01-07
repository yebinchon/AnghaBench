
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb_port {int class; int * input; } ;
struct ddb {int port_num; struct ddb_port* port; } ;





 int ddb_ci_detach (struct ddb_port*) ;
 int dvb_input_detach (int ) ;
 int dvb_unregister_adapters (struct ddb*) ;

void ddb_ports_detach(struct ddb *dev)
{
 int i;
 struct ddb_port *port;

 for (i = 0; i < dev->port_num; i++) {
  port = &dev->port[i];

  switch (port->class) {
  case 128:
   dvb_input_detach(port->input[1]);
   dvb_input_detach(port->input[0]);
   break;
  case 130:
  case 129:
   ddb_ci_detach(port);
   break;
  }
 }
 dvb_unregister_adapters(dev);
}
