
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct myri10ge_priv {scalar_t__ running; } ;


 int myri10ge_close (struct net_device*) ;
 int myri10ge_open (struct net_device*) ;
 int netdev_info (struct net_device*,char*,int,int) ;
 struct myri10ge_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int myri10ge_change_mtu(struct net_device *dev, int new_mtu)
{
 struct myri10ge_priv *mgp = netdev_priv(dev);

 netdev_info(dev, "changing mtu from %d to %d\n", dev->mtu, new_mtu);
 if (mgp->running) {


  myri10ge_close(dev);
  dev->mtu = new_mtu;
  myri10ge_open(dev);
 } else
  dev->mtu = new_mtu;

 return 0;
}
