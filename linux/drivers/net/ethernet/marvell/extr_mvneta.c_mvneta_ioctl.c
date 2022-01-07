
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mvneta_port {int phylink; } ;
struct ifreq {int dummy; } ;


 struct mvneta_port* netdev_priv (struct net_device*) ;
 int phylink_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int mvneta_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct mvneta_port *pp = netdev_priv(dev);

 return phylink_mii_ioctl(pp->phylink, ifr, cmd);
}
