
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int port_list; } ;
struct net_device {char* name; scalar_t__ type; } ;


 int EBUSY ;
 int NETDEV_POST_TYPE_CHANGE ;
 int NETDEV_PRE_TYPE_CHANGE ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int dev_mc_flush (struct net_device*) ;
 int dev_uc_flush (struct net_device*) ;
 int list_empty (int *) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct team* netdev_priv (struct net_device*) ;
 int notifier_to_errno (int) ;
 int team_setup_by_port (struct net_device*,struct net_device*) ;

__attribute__((used)) static int team_dev_type_check_change(struct net_device *dev,
          struct net_device *port_dev)
{
 struct team *team = netdev_priv(dev);
 char *portname = port_dev->name;
 int err;

 if (dev->type == port_dev->type)
  return 0;
 if (!list_empty(&team->port_list)) {
  netdev_err(dev, "Device %s is of different type\n", portname);
  return -EBUSY;
 }
 err = call_netdevice_notifiers(NETDEV_PRE_TYPE_CHANGE, dev);
 err = notifier_to_errno(err);
 if (err) {
  netdev_err(dev, "Refused to change device type\n");
  return err;
 }
 dev_uc_flush(dev);
 dev_mc_flush(dev);
 team_setup_by_port(dev, port_dev);
 call_netdevice_notifiers(NETDEV_POST_TYPE_CHANGE, dev);
 return 0;
}
