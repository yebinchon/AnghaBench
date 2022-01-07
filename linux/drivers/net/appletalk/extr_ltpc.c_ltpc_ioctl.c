
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_node; int s_net; } ;
struct sockaddr_at {TYPE_1__ sat_addr; } ;
struct net_device {int* broadcast; int addr_len; int * dev_addr; } ;
struct atalk_addr {int s_node; int s_net; } ;
struct ltpc_private {struct atalk_addr my_addr; } ;
struct lt_init {int hint; int command; } ;
struct ifreq {int ifr_addr; } ;
typedef int c ;


 int DEBUG_VERBOSE ;
 int EINVAL ;
 int LT_FLAG_ALLLAP ;
 int LT_INIT ;


 int debug ;
 int do_read (struct net_device*,struct lt_init*,int,struct lt_init*,int ) ;
 struct ltpc_private* netdev_priv (struct net_device*) ;
 int printk (char*) ;
 int read_30 (struct net_device*) ;
 int set_30 (struct net_device*,int) ;

__attribute__((used)) static int ltpc_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct sockaddr_at *sa = (struct sockaddr_at *) &ifr->ifr_addr;

 struct ltpc_private *ltpc_priv = netdev_priv(dev);
 struct atalk_addr *aa = &ltpc_priv->my_addr;
 struct lt_init c;
 int ltflags;

 if(debug & DEBUG_VERBOSE) printk("ltpc_ioctl called\n");

 switch(cmd) {
  case 128:

   aa->s_net = sa->sat_addr.s_net;


   c.command = LT_INIT;
   c.hint = sa->sat_addr.s_node;

   aa->s_node = do_read(dev,&c,sizeof(c),&c,0);


   ltflags = read_30(dev);
   ltflags |= LT_FLAG_ALLLAP;
   set_30 (dev,ltflags);

   dev->broadcast[0] = 0xFF;
   dev->dev_addr[0] = aa->s_node;

   dev->addr_len=1;

   return 0;

  case 129:

   sa->sat_addr.s_net = aa->s_net;
   sa->sat_addr.s_node = aa->s_node;

   return 0;

  default:
   return -EINVAL;
 }
}
