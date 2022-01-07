
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;





 int mlxsw_sp_netdevice_port_lower_event (struct net_device*,unsigned long,void*) ;
 int mlxsw_sp_netdevice_port_upper_event (struct net_device*,struct net_device*,unsigned long,void*) ;

__attribute__((used)) static int mlxsw_sp_netdevice_port_event(struct net_device *lower_dev,
      struct net_device *port_dev,
      unsigned long event, void *ptr)
{
 switch (event) {
 case 128:
 case 129:
  return mlxsw_sp_netdevice_port_upper_event(lower_dev, port_dev,
          event, ptr);
 case 130:
  return mlxsw_sp_netdevice_port_lower_event(port_dev, event,
          ptr);
 }

 return 0;
}
