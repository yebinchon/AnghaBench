
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macsec_dev {int dummy; } ;


 scalar_t__ netdev_priv (struct net_device const*) ;

__attribute__((used)) static struct macsec_dev *macsec_priv(const struct net_device *dev)
{
 return (struct macsec_dev *)netdev_priv(dev);
}
