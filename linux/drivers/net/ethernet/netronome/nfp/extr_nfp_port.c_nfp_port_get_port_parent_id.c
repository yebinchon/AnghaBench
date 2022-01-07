
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nfp_port {TYPE_1__* app; } ;
struct netdev_phys_item_id {int id_len; int id; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int cpp; } ;


 int EOPNOTSUPP ;
 int memcpy (int *,int const*,int ) ;
 int nfp_cpp_serial (int ,int const**) ;
 struct nfp_port* nfp_port_from_netdev (struct net_device*) ;

int nfp_port_get_port_parent_id(struct net_device *netdev,
    struct netdev_phys_item_id *ppid)
{
 struct nfp_port *port;
 const u8 *serial;

 port = nfp_port_from_netdev(netdev);
 if (!port)
  return -EOPNOTSUPP;

 ppid->id_len = nfp_cpp_serial(port->app->cpp, &serial);
 memcpy(&ppid->id, serial, ppid->id_len);

 return 0;
}
