
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * skb; int state; } ;
struct TYPE_3__ {int skb; int state; } ;
struct net_local {int port_owner; scalar_t__ is_deferred; int connection; TYPE_2__ snd_data; TYPE_1__ rcv_data; int timer; int kill_timer; scalar_t__ should_relinquish; int pardev; } ;
struct net_device {int irq; scalar_t__ dev_addr; } ;
struct in_ifaddr {int ifa_local; } ;
struct in_device {int ifa_list; } ;


 int EAGAIN ;
 int PLIP_CN_NONE ;
 int PLIP_PK_DONE ;
 struct in_device* __in_dev_get_rtnl (struct net_device*) ;
 int atomic_set (int *,int ) ;
 int enable_parport_interrupts (struct net_device*) ;
 int memcpy (scalar_t__,int *,int) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 scalar_t__ parport_claim (int ) ;
 struct in_ifaddr* rcu_dereference (int ) ;
 int schedule_delayed_work (int *,int) ;
 int write_data (struct net_device*,int) ;

__attribute__((used)) static int
plip_open(struct net_device *dev)
{
 struct net_local *nl = netdev_priv(dev);
 struct in_device *in_dev;


 if (!nl->port_owner) {
  if (parport_claim(nl->pardev)) return -EAGAIN;
  nl->port_owner = 1;
 }

 nl->should_relinquish = 0;


 write_data (dev, 0x00);


 enable_parport_interrupts (dev);
 if (dev->irq == -1)
 {
  atomic_set (&nl->kill_timer, 0);
  schedule_delayed_work(&nl->timer, 1);
 }


 nl->rcv_data.state = nl->snd_data.state = PLIP_PK_DONE;
 nl->rcv_data.skb = nl->snd_data.skb = ((void*)0);
 nl->connection = PLIP_CN_NONE;
 nl->is_deferred = 0;
 in_dev=__in_dev_get_rtnl(dev);
 if (in_dev) {



  const struct in_ifaddr *ifa = rcu_dereference(in_dev->ifa_list);
  if (ifa != ((void*)0)) {
   memcpy(dev->dev_addr+2, &ifa->ifa_local, 4);
  }
 }

 netif_start_queue (dev);

 return 0;
}
