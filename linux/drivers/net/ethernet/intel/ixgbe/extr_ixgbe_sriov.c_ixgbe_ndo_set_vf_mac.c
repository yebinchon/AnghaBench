
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned char u8 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int num_vfs; TYPE_2__* pdev; TYPE_1__* vfinfo; int state; } ;
typedef int s32 ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int pf_set_mac; unsigned char* vf_mac_addresses; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int __IXGBE_DOWN ;
 int dev_info (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 scalar_t__ is_valid_ether_addr (unsigned char*) ;
 scalar_t__ is_zero_ether_addr (unsigned char*) ;
 int ixgbe_del_mac_filter (struct ixgbe_adapter*,unsigned char*,int) ;
 int ixgbe_set_vf_mac (struct ixgbe_adapter*,int,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

int ixgbe_ndo_set_vf_mac(struct net_device *netdev, int vf, u8 *mac)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 s32 retval;

 if (vf >= adapter->num_vfs)
  return -EINVAL;

 if (is_valid_ether_addr(mac)) {
  dev_info(&adapter->pdev->dev, "setting MAC %pM on VF %d\n",
    mac, vf);
  dev_info(&adapter->pdev->dev, "Reload the VF driver to make this change effective.");

  retval = ixgbe_set_vf_mac(adapter, vf, mac);
  if (retval >= 0) {
   adapter->vfinfo[vf].pf_set_mac = 1;

   if (test_bit(__IXGBE_DOWN, &adapter->state)) {
    dev_warn(&adapter->pdev->dev, "The VF MAC address has been set, but the PF device is not up.\n");
    dev_warn(&adapter->pdev->dev, "Bring the PF device up before attempting to use the VF device.\n");
   }
  } else {
   dev_warn(&adapter->pdev->dev, "The VF MAC address was NOT set due to invalid or duplicate MAC address.\n");
  }
 } else if (is_zero_ether_addr(mac)) {
  unsigned char *vf_mac_addr =
        adapter->vfinfo[vf].vf_mac_addresses;


  if (is_zero_ether_addr(vf_mac_addr))
   return 0;

  dev_info(&adapter->pdev->dev, "removing MAC on VF %d\n", vf);

  retval = ixgbe_del_mac_filter(adapter, vf_mac_addr, vf);
  if (retval >= 0) {
   adapter->vfinfo[vf].pf_set_mac = 0;
   memcpy(vf_mac_addr, mac, ETH_ALEN);
  } else {
   dev_warn(&adapter->pdev->dev, "Could NOT remove the VF MAC address.\n");
  }
 } else {
  retval = -EINVAL;
 }

 return retval;
}
