
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int dummy; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;
 int PCI_D0 ;
 int PCI_D3hot ;



 struct velocity_info* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int velocity_mii_ioctl (struct net_device*,struct ifreq*,int) ;
 int velocity_set_power_state (struct velocity_info*,int ) ;

__attribute__((used)) static int velocity_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct velocity_info *vptr = netdev_priv(dev);
 int ret;




 if (!netif_running(dev))
  velocity_set_power_state(vptr, PCI_D0);

 switch (cmd) {
 case 130:
 case 129:
 case 128:
  ret = velocity_mii_ioctl(dev, rq, cmd);
  break;

 default:
  ret = -EOPNOTSUPP;
 }
 if (!netif_running(dev))
  velocity_set_power_state(vptr, PCI_D3hot);


 return ret;
}
