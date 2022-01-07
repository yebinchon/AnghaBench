
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct hermes {int dummy; } ;


 int DUMMY_FID ;
 int TXCOMPLFID ;
 int hermes_write_regn (struct hermes*,int ,int ) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void __orinoco_ev_tx(struct net_device *dev, struct hermes *hw)
{
 dev->stats.tx_packets++;

 netif_wake_queue(dev);

 hermes_write_regn(hw, TXCOMPLFID, DUMMY_FID);
}
