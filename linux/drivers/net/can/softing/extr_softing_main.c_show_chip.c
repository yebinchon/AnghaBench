
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct softing_priv {int chip; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct softing_priv* netdev2softing (struct net_device*) ;
 int sprintf (char*,char*,int) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t show_chip(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct net_device *ndev = to_net_dev(dev);
 struct softing_priv *priv = netdev2softing(ndev);

 return sprintf(buf, "%i\n", priv->chip);
}
