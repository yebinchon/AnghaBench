
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {struct net_device* dev; } ;
struct tun_file {int tun; } ;
struct net_device {int dummy; } ;


 int __tun_detach (struct tun_file*,int) ;
 int netdev_state_change (struct net_device*) ;
 struct tun_struct* rtnl_dereference (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void tun_detach(struct tun_file *tfile, bool clean)
{
 struct tun_struct *tun;
 struct net_device *dev;

 rtnl_lock();
 tun = rtnl_dereference(tfile->tun);
 dev = tun ? tun->dev : ((void*)0);
 __tun_detach(tfile, clean);
 if (dev)
  netdev_state_change(dev);
 rtnl_unlock();
}
