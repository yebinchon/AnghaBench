
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int capabilities; scalar_t__ is_up; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ NETXEN_ADAPTER_UP_MAGIC ;
 int NX_FW_CAPABILITY_BDG ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;
 int netxen_config_bridged_mode (struct netxen_adapter*,int) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t
netxen_store_bridged_mode(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 struct net_device *net = to_net_dev(dev);
 struct netxen_adapter *adapter = netdev_priv(net);
 unsigned long new;
 int ret = -EINVAL;

 if (!(adapter->capabilities & NX_FW_CAPABILITY_BDG))
  goto err_out;

 if (adapter->is_up != NETXEN_ADAPTER_UP_MAGIC)
  goto err_out;

 if (kstrtoul(buf, 2, &new))
  goto err_out;

 if (!netxen_config_bridged_mode(adapter, !!new))
  ret = len;

err_out:
 return ret;
}
