
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct be_adapter {int rx_filter_lock; int vlans_added; int vids; } ;
typedef int __be16 ;


 int be_vid_config (struct be_adapter*) ;
 int clear_bit (scalar_t__,int ) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int test_bit (scalar_t__,int ) ;

__attribute__((used)) static int be_vlan_rem_vid(struct net_device *netdev, __be16 proto, u16 vid)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 int status = 0;

 mutex_lock(&adapter->rx_filter_lock);


 if (lancer_chip(adapter) && vid == 0)
  goto done;

 if (!test_bit(vid, adapter->vids))
  goto done;

 clear_bit(vid, adapter->vids);
 adapter->vlans_added--;

 status = be_vid_config(adapter);
done:
 mutex_unlock(&adapter->rx_filter_lock);
 return status;
}
