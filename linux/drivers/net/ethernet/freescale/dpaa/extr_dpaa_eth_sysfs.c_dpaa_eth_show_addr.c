
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mac_device {TYPE_1__* res; } ;
struct dpaa_priv {struct mac_device* mac_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ start; } ;


 struct dpaa_priv* netdev_priv (int ) ;
 int sprintf (char*,char*,...) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t dpaa_eth_show_addr(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct dpaa_priv *priv = netdev_priv(to_net_dev(dev));
 struct mac_device *mac_dev = priv->mac_dev;

 if (mac_dev)
  return sprintf(buf, "%llx",
    (unsigned long long)mac_dev->res->start);
 else
  return sprintf(buf, "none");
}
