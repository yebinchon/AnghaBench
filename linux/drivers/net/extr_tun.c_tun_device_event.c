
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tun_struct {int numqueues; int * tfiles; } ;
struct TYPE_3__ {TYPE_2__* sk; } ;
struct tun_file {TYPE_1__ socket; } ;
struct notifier_block {int dummy; } ;
struct net_device {int * rtnl_link_ops; } ;
struct TYPE_4__ {int (* sk_write_space ) (TYPE_2__*) ;} ;




 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 struct tun_struct* netdev_priv (struct net_device*) ;
 struct tun_file* rtnl_dereference (int ) ;
 int stub1 (TYPE_2__*) ;
 int tun_link_ops ;
 int tun_queue_resize (struct tun_struct*) ;

__attribute__((used)) static int tun_device_event(struct notifier_block *unused,
       unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct tun_struct *tun = netdev_priv(dev);
 int i;

 if (dev->rtnl_link_ops != &tun_link_ops)
  return NOTIFY_DONE;

 switch (event) {
 case 129:
  if (tun_queue_resize(tun))
   return NOTIFY_BAD;
  break;
 case 128:
  for (i = 0; i < tun->numqueues; i++) {
   struct tun_file *tfile;

   tfile = rtnl_dereference(tun->tfiles[i]);
   tfile->socket.sk->sk_write_space(tfile->socket.sk);
  }
  break;
 default:
  break;
 }

 return NOTIFY_DONE;
}
