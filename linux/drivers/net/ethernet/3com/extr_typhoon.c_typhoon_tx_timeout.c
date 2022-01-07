
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct typhoon {int ioaddr; TYPE_1__* indexes; int txLoRing; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int txLoCleared; } ;


 int NoWait ;
 int WaitNoSleep ;
 int netdev_err (struct net_device*,char*) ;
 struct typhoon* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int typhoon_clean_tx (struct typhoon*,int *,int *) ;
 int typhoon_free_rx_rings (struct typhoon*) ;
 scalar_t__ typhoon_reset (int ,int ) ;
 scalar_t__ typhoon_start_runtime (struct typhoon*) ;

__attribute__((used)) static void
typhoon_tx_timeout(struct net_device *dev)
{
 struct typhoon *tp = netdev_priv(dev);

 if(typhoon_reset(tp->ioaddr, WaitNoSleep) < 0) {
  netdev_warn(dev, "could not reset in tx timeout\n");
  goto truly_dead;
 }


 typhoon_clean_tx(tp, &tp->txLoRing, &tp->indexes->txLoCleared);
 typhoon_free_rx_rings(tp);

 if(typhoon_start_runtime(tp) < 0) {
  netdev_err(dev, "could not start runtime in tx timeout\n");
  goto truly_dead;
        }

 netif_wake_queue(dev);
 return;

truly_dead:

 typhoon_reset(tp->ioaddr, NoWait);
 netif_carrier_off(dev);
}
