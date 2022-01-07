
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct be_adapter {int rx_filter_lock; struct net_device* netdev; } ;


 int IFF_PROMISC ;
 scalar_t__ be_in_all_promisc (struct be_adapter*) ;
 int be_set_all_promisc (struct be_adapter*) ;
 int be_set_mc_list (struct be_adapter*) ;
 int be_set_uc_list (struct be_adapter*) ;
 int be_vid_config (struct be_adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void __be_set_rx_mode(struct be_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 mutex_lock(&adapter->rx_filter_lock);

 if (netdev->flags & IFF_PROMISC) {
  if (!be_in_all_promisc(adapter))
   be_set_all_promisc(adapter);
 } else if (be_in_all_promisc(adapter)) {




  be_vid_config(adapter);
 }

 be_set_uc_list(adapter);
 be_set_mc_list(adapter);

 mutex_unlock(&adapter->rx_filter_lock);
}
