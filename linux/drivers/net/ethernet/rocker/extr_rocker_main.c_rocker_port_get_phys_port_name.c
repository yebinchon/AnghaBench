
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int dummy; } ;
struct port_name {char* buf; size_t len; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 struct rocker_port* netdev_priv (struct net_device*) ;
 int rocker_cmd_exec (struct rocker_port*,int,int ,int *,int ,struct port_name*) ;
 int rocker_cmd_get_port_settings_phys_name_proc ;
 int rocker_cmd_get_port_settings_prep ;

__attribute__((used)) static int rocker_port_get_phys_port_name(struct net_device *dev,
       char *buf, size_t len)
{
 struct rocker_port *rocker_port = netdev_priv(dev);
 struct port_name name = { .buf = buf, .len = len };
 int err;

 err = rocker_cmd_exec(rocker_port, 0,
         rocker_cmd_get_port_settings_prep, ((void*)0),
         rocker_cmd_get_port_settings_phys_name_proc,
         &name);

 return err ? -EOPNOTSUPP : 0;
}
