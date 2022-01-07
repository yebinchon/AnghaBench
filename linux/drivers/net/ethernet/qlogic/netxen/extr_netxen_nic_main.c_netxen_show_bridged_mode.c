
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int capabilities; int flags; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int NETXEN_NIC_BRIDGE_ENABLED ;
 int NX_FW_CAPABILITY_BDG ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;
 int sprintf (char*,char*,int) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t
netxen_show_bridged_mode(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct net_device *net = to_net_dev(dev);
 struct netxen_adapter *adapter;
 int bridged_mode = 0;

 adapter = netdev_priv(net);

 if (adapter->capabilities & NX_FW_CAPABILITY_BDG)
  bridged_mode = !!(adapter->flags & NETXEN_NIC_BRIDGE_ENABLED);

 return sprintf(buf, "%d\n", bridged_mode);
}
