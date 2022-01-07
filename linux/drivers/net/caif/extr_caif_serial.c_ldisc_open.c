
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {char* name; int flags; struct ser_device* disc_data; int receive_room; TYPE_1__* ops; } ;
struct ser_device {int node; struct net_device* dev; int tty; } ;
struct net_device {int dummy; } ;
typedef int name ;
struct TYPE_2__ {int * write; } ;


 int CAP_SYS_ADMIN ;
 int CAP_SYS_TTY_CONFIG ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EPERM ;
 int IFNAMSIZ ;
 int NET_NAME_UNKNOWN ;
 int N_TTY_BUF_SIZE ;
 int TTY_DO_WRITE_WAKEUP ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 int caifdev_setup ;
 int capable (int ) ;
 int debugfs_init (struct ser_device*,struct tty_struct*) ;
 int free_netdev (struct net_device*) ;
 int list_add (int *,int *) ;
 struct ser_device* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int register_netdevice (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int ser_list ;
 int ser_lock ;
 int ser_release (int *) ;
 int set_bit (int ,int *) ;
 int snprintf (char*,int,char*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_kref_get (struct tty_struct*) ;
 int update_tty_status (struct ser_device*) ;

__attribute__((used)) static int ldisc_open(struct tty_struct *tty)
{
 struct ser_device *ser;
 struct net_device *dev;
 char name[64];
 int result;


 if (tty->ops->write == ((void*)0))
  return -EOPNOTSUPP;
 if (!capable(CAP_SYS_ADMIN) && !capable(CAP_SYS_TTY_CONFIG))
  return -EPERM;


 ser_release(((void*)0));

 result = snprintf(name, sizeof(name), "cf%s", tty->name);
 if (result >= IFNAMSIZ)
  return -EINVAL;
 dev = alloc_netdev(sizeof(*ser), name, NET_NAME_UNKNOWN,
      caifdev_setup);
 if (!dev)
  return -ENOMEM;

 ser = netdev_priv(dev);
 ser->tty = tty_kref_get(tty);
 ser->dev = dev;
 debugfs_init(ser, tty);
 tty->receive_room = N_TTY_BUF_SIZE;
 tty->disc_data = ser;
 set_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);
 rtnl_lock();
 result = register_netdevice(dev);
 if (result) {
  rtnl_unlock();
  free_netdev(dev);
  return -ENODEV;
 }

 spin_lock(&ser_lock);
 list_add(&ser->node, &ser_list);
 spin_unlock(&ser_lock);
 rtnl_unlock();
 netif_stop_queue(dev);
 update_tty_status(ser);
 return 0;
}
