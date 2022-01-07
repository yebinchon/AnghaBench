
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct mpt_lan_priv {TYPE_1__* mpt_dev; } ;
struct TYPE_2__ {scalar_t__ active; } ;
typedef TYPE_1__ MPT_ADAPTER ;


 int dlprintk (char*) ;
 struct mpt_lan_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void
mpt_lan_tx_timeout(struct net_device *dev)
{
 struct mpt_lan_priv *priv = netdev_priv(dev);
 MPT_ADAPTER *mpt_dev = priv->mpt_dev;

 if (mpt_dev->active) {
  dlprintk (("mptlan/tx_timeout: calling netif_wake_queue for %s.\n", dev->name));
  netif_wake_queue(dev);
 }
}
