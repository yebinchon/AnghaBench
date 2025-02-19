
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_asy {int flags; int lock; struct net_device* dev; int magic; } ;
struct net_device {int max_mtu; int watchdog_timeo; int tx_queue_len; int flags; int type; scalar_t__ addr_len; scalar_t__ hard_header_len; int * netdev_ops; scalar_t__ min_mtu; int mtu; } ;


 int ARPHRD_X25 ;
 int HZ ;
 int IFF_NOARP ;
 int SLF_INUSE ;
 int SL_MTU ;
 int X25_ASY_MAGIC ;
 struct x25_asy* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int x25_asy_netdev_ops ;

__attribute__((used)) static void x25_asy_setup(struct net_device *dev)
{
 struct x25_asy *sl = netdev_priv(dev);

 sl->magic = X25_ASY_MAGIC;
 sl->dev = dev;
 spin_lock_init(&sl->lock);
 set_bit(SLF_INUSE, &sl->flags);





 dev->mtu = SL_MTU;
 dev->min_mtu = 0;
 dev->max_mtu = 65534;
 dev->netdev_ops = &x25_asy_netdev_ops;
 dev->watchdog_timeo = HZ*20;
 dev->hard_header_len = 0;
 dev->addr_len = 0;
 dev->type = ARPHRD_X25;
 dev->tx_queue_len = 10;


 dev->flags = IFF_NOARP;
}
