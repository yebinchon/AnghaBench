
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mvpp2_port {int phylink; } ;
struct ifreq {int dummy; } ;


 int ENOTSUPP ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;
 int phylink_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int mvpp2_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct mvpp2_port *port = netdev_priv(dev);

 if (!port->phylink)
  return -ENOTSUPP;

 return phylink_mii_ioctl(port->phylink, ifr, cmd);
}
