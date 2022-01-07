
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slcan {int tx_work; int lock; struct net_device* dev; int magic; } ;
struct net_device {int base_addr; void* ml_priv; } ;
struct can_ml_priv {int dummy; } ;


 int ALIGN (int,int ) ;
 int IFNAMSIZ ;
 int INIT_WORK (int *,int ) ;
 int NETDEV_ALIGN ;
 int NET_NAME_UNKNOWN ;
 int SLCAN_MAGIC ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 int maxdev ;
 struct slcan* netdev_priv (struct net_device*) ;
 int slc_setup ;
 struct net_device** slcan_devs ;
 int slcan_transmit ;
 int spin_lock_init (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static struct slcan *slc_alloc(void)
{
 int i;
 char name[IFNAMSIZ];
 struct net_device *dev = ((void*)0);
 struct slcan *sl;
 int size;

 for (i = 0; i < maxdev; i++) {
  dev = slcan_devs[i];
  if (dev == ((void*)0))
   break;

 }


 if (i >= maxdev)
  return ((void*)0);

 sprintf(name, "slcan%d", i);
 size = ALIGN(sizeof(*sl), NETDEV_ALIGN) + sizeof(struct can_ml_priv);
 dev = alloc_netdev(size, name, NET_NAME_UNKNOWN, slc_setup);
 if (!dev)
  return ((void*)0);

 dev->base_addr = i;
 sl = netdev_priv(dev);
 dev->ml_priv = (void *)sl + ALIGN(sizeof(*sl), NETDEV_ALIGN);


 sl->magic = SLCAN_MAGIC;
 sl->dev = dev;
 spin_lock_init(&sl->lock);
 INIT_WORK(&sl->tx_work, slcan_transmit);
 slcan_devs[i] = dev;

 return sl;
}
