
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {int hw_resetting; int hw_ready; scalar_t__ hw_reset_tries; } ;
typedef TYPE_1__ local_info_t ;


 int HFA384X_CMDCODE_ENABLE ;
 scalar_t__ hfa384x_cmd (struct net_device*,int ,int ,int *,int *) ;
 int hfa384x_enable_interrupts (struct net_device*) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int printk (char*,int ) ;
 scalar_t__ prism2_reset_port (struct net_device*) ;

__attribute__((used)) static int prism2_hw_enable(struct net_device *dev, int initial)
{
 struct hostap_interface *iface;
 local_info_t *local;
 int was_resetting;

 iface = netdev_priv(dev);
 local = iface->local;
 was_resetting = local->hw_resetting;

 if (hfa384x_cmd(dev, HFA384X_CMDCODE_ENABLE, 0, ((void*)0), ((void*)0))) {
  printk("%s: MAC port 0 enabling failed\n", dev->name);
  return 1;
 }

 local->hw_ready = 1;
 local->hw_reset_tries = 0;
 local->hw_resetting = 0;
 hfa384x_enable_interrupts(dev);




 if (initial && prism2_reset_port(dev)) {
  printk("%s: MAC port 0 resetting failed\n", dev->name);
  return 1;
 }

 if (was_resetting && netif_queue_stopped(dev)) {



  netif_wake_queue(dev);
 }

 return 0;
}
