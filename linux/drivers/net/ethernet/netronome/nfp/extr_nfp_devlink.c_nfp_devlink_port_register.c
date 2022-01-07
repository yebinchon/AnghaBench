
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nfp_port {int eth_id; int dl_port; TYPE_1__* app; } ;
struct nfp_eth_table_port {int label_subport; int is_split; int label_port; } ;
struct nfp_app {int pf; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int cpp; } ;


 int DEVLINK_PORT_FLAVOUR_PHYSICAL ;
 int devlink_port_attrs_set (int *,int ,int ,int ,int ,int const*,int) ;
 int devlink_port_register (struct devlink*,int *,int ) ;
 int nfp_cpp_serial (int ,int const**) ;
 int nfp_devlink_fill_eth_port (struct nfp_port*,struct nfp_eth_table_port*) ;
 struct devlink* priv_to_devlink (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int nfp_devlink_port_register(struct nfp_app *app, struct nfp_port *port)
{
 struct nfp_eth_table_port eth_port;
 struct devlink *devlink;
 const u8 *serial;
 int serial_len;
 int ret;

 rtnl_lock();
 ret = nfp_devlink_fill_eth_port(port, &eth_port);
 rtnl_unlock();
 if (ret)
  return ret;

 serial_len = nfp_cpp_serial(port->app->cpp, &serial);
 devlink_port_attrs_set(&port->dl_port, DEVLINK_PORT_FLAVOUR_PHYSICAL,
          eth_port.label_port, eth_port.is_split,
          eth_port.label_subport, serial, serial_len);

 devlink = priv_to_devlink(app->pf);

 return devlink_port_register(devlink, &port->dl_port, port->eth_id);
}
