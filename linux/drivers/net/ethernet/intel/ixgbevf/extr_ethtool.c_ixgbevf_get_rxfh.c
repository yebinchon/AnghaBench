
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct ixgbevf_adapter {int mbx_lock; TYPE_2__ hw; int num_rx_queues; int * rss_indir_tbl; int rss_key; } ;


 int ETH_RSS_HASH_TOP ;
 int IXGBEVF_X550_VFRETA_SIZE ;
 scalar_t__ ixgbe_mac_X550_vf ;
 int ixgbevf_get_reta_locked (TYPE_2__*,int *,int ) ;
 int ixgbevf_get_rss_key_locked (TYPE_2__*,int *) ;
 int ixgbevf_get_rxfh_key_size (struct net_device*) ;
 int memcpy (int *,int ,int ) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ixgbevf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
       u8 *hfunc)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 int err = 0;

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 if (adapter->hw.mac.type >= ixgbe_mac_X550_vf) {
  if (key)
   memcpy(key, adapter->rss_key,
          ixgbevf_get_rxfh_key_size(netdev));

  if (indir) {
   int i;

   for (i = 0; i < IXGBEVF_X550_VFRETA_SIZE; i++)
    indir[i] = adapter->rss_indir_tbl[i];
  }
 } else {



  if (!indir && !key)
   return 0;

  spin_lock_bh(&adapter->mbx_lock);
  if (indir)
   err = ixgbevf_get_reta_locked(&adapter->hw, indir,
            adapter->num_rx_queues);

  if (!err && key)
   err = ixgbevf_get_rss_key_locked(&adapter->hw, key);

  spin_unlock_bh(&adapter->mbx_lock);
 }

 return err;
}
