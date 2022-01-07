
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct i40e_vsi {scalar_t__ type; int mac_filter_hash_lock; struct i40e_pf* back; } ;
struct TYPE_4__ {int asq_last_status; } ;
struct TYPE_3__ {int addr; } ;
struct i40e_hw {TYPE_2__ aq; TYPE_1__ mac; } ;
struct i40e_pf {int state; struct i40e_hw hw; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
typedef scalar_t__ i40e_status ;


 int EADDRNOTAVAIL ;
 int I40E_AQC_WRITE_TYPE_LAA_WOL ;
 scalar_t__ I40E_VSI_MAIN ;
 int __I40E_DOWN ;
 int __I40E_RESET_RECOVERY_PENDING ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int i40e_add_mac_filter (struct i40e_vsi*,int ) ;
 scalar_t__ i40e_aq_mac_address_write (struct i40e_hw*,int ,int ,int *) ;
 int i40e_aq_str (struct i40e_hw*,int ) ;
 int i40e_del_mac_filter (struct i40e_vsi*,int ) ;
 int i40e_service_event_schedule (struct i40e_pf*) ;
 int i40e_stat_str (struct i40e_hw*,scalar_t__) ;
 int is_valid_ether_addr (int ) ;
 int netdev_info (struct net_device*,char*,int ,...) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int i40e_set_mac(struct net_device *netdev, void *p)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_pf *pf = vsi->back;
 struct i40e_hw *hw = &pf->hw;
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 if (ether_addr_equal(netdev->dev_addr, addr->sa_data)) {
  netdev_info(netdev, "already using mac address %pM\n",
       addr->sa_data);
  return 0;
 }

 if (test_bit(__I40E_DOWN, pf->state) ||
     test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
  return -EADDRNOTAVAIL;

 if (ether_addr_equal(hw->mac.addr, addr->sa_data))
  netdev_info(netdev, "returning to hw mac address %pM\n",
       hw->mac.addr);
 else
  netdev_info(netdev, "set new mac address %pM\n", addr->sa_data);







 spin_lock_bh(&vsi->mac_filter_hash_lock);
 i40e_del_mac_filter(vsi, netdev->dev_addr);
 ether_addr_copy(netdev->dev_addr, addr->sa_data);
 i40e_add_mac_filter(vsi, netdev->dev_addr);
 spin_unlock_bh(&vsi->mac_filter_hash_lock);

 if (vsi->type == I40E_VSI_MAIN) {
  i40e_status ret;

  ret = i40e_aq_mac_address_write(hw, I40E_AQC_WRITE_TYPE_LAA_WOL,
      addr->sa_data, ((void*)0));
  if (ret)
   netdev_info(netdev, "Ignoring error from firmware on LAA update, status %s, AQ ret %s\n",
        i40e_stat_str(hw, ret),
        i40e_aq_str(hw, hw->aq.asq_last_status));
 }




 i40e_service_event_schedule(pf);
 return 0;
}
