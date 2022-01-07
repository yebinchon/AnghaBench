
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip {int outfill_timer; int keepalive_timer; int mode; int tx_work; int lock; struct net_device* dev; int magic; } ;
struct net_device {int base_addr; } ;


 int IFNAMSIZ ;
 int INIT_WORK (int *,int ) ;
 int NET_NAME_UNKNOWN ;
 int SLIP_MAGIC ;
 int SL_MODE_DEFAULT ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 struct slip* netdev_priv (struct net_device*) ;
 int sl_keepalive ;
 int sl_outfill ;
 int sl_setup ;
 struct net_device** slip_devs ;
 int slip_maxdev ;
 int slip_transmit ;
 int spin_lock_init (int *) ;
 int sprintf (char*,char*,int) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct slip *sl_alloc(void)
{
 int i;
 char name[IFNAMSIZ];
 struct net_device *dev = ((void*)0);
 struct slip *sl;

 for (i = 0; i < slip_maxdev; i++) {
  dev = slip_devs[i];
  if (dev == ((void*)0))
   break;
 }

 if (i >= slip_maxdev)
  return ((void*)0);

 sprintf(name, "sl%d", i);
 dev = alloc_netdev(sizeof(*sl), name, NET_NAME_UNKNOWN, sl_setup);
 if (!dev)
  return ((void*)0);

 dev->base_addr = i;
 sl = netdev_priv(dev);


 sl->magic = SLIP_MAGIC;
 sl->dev = dev;
 spin_lock_init(&sl->lock);
 INIT_WORK(&sl->tx_work, slip_transmit);
 sl->mode = SL_MODE_DEFAULT;





 slip_devs[i] = dev;
 return sl;
}
