
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_6__ {int tx_urb; } ;
typedef TYPE_2__ pegasus_t ;


 TYPE_2__* netdev_priv (struct net_device*) ;
 int netif_warn (TYPE_2__*,int ,struct net_device*,char*) ;
 int timer ;
 int usb_unlink_urb (int ) ;

__attribute__((used)) static void pegasus_tx_timeout(struct net_device *net)
{
 pegasus_t *pegasus = netdev_priv(net);
 netif_warn(pegasus, timer, net, "tx timeout\n");
 usb_unlink_urb(pegasus->tx_urb);
 net->stats.tx_errors++;
}
