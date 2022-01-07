
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;


 int TLAN_DBG (int ,char*,int ) ;
 int TLAN_DEBUG_GNRL ;
 int TLAN_IGNORE ;
 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int tlan_free_lists (struct net_device*) ;
 int tlan_read_and_clear_stats (struct net_device*,int ) ;
 int tlan_reset_adapter (struct net_device*) ;
 int tlan_reset_lists (struct net_device*) ;

__attribute__((used)) static void tlan_tx_timeout(struct net_device *dev)
{

 TLAN_DBG(TLAN_DEBUG_GNRL, "%s: Transmit timed out.\n", dev->name);


 tlan_free_lists(dev);
 tlan_reset_lists(dev);
 tlan_read_and_clear_stats(dev, TLAN_IGNORE);
 tlan_reset_adapter(dev);
 netif_trans_update(dev);
 netif_wake_queue(dev);

}
