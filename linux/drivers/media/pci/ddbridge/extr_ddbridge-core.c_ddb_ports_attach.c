
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb_port {scalar_t__ class; } ;
struct ddb {int port_num; int dev; struct ddb_port* port; } ;


 scalar_t__ DDB_PORT_NONE ;
 int ENODEV ;
 int ddb_port_attach (struct ddb_port*) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,int,int) ;
 int dvb_register_adapters (struct ddb*) ;

int ddb_ports_attach(struct ddb *dev)
{
 int i, numports, err_ports = 0, ret = 0;
 struct ddb_port *port;

 if (dev->port_num) {
  ret = dvb_register_adapters(dev);
  if (ret < 0) {
   dev_err(dev->dev, "Registering adapters failed. Check DVB_MAX_ADAPTERS in config.\n");
   return ret;
  }
 }

 numports = dev->port_num;

 for (i = 0; i < dev->port_num; i++) {
  port = &dev->port[i];
  if (port->class != DDB_PORT_NONE) {
   ret = ddb_port_attach(port);
   if (ret)
    err_ports++;
  } else {
   numports--;
  }
 }

 if (err_ports) {
  if (err_ports == numports) {
   dev_err(dev->dev, "All connected ports failed to initialise!\n");
   return -ENODEV;
  }

  dev_warn(dev->dev, "%d of %d connected ports failed to initialise!\n",
    err_ports, numports);
 }

 return 0;
}
