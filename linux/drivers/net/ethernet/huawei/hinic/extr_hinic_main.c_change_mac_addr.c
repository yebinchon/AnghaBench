
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct net_device {int dev_addr; } ;
struct hinic_dev {int mgmt_lock; int vlan_bitmap; } ;


 int EADDRNOTAVAIL ;
 scalar_t__ VLAN_N_VID ;
 int down (int *) ;
 int drv ;
 scalar_t__ find_next_bit (int ,scalar_t__,scalar_t__) ;
 int hinic_port_add_mac (struct hinic_dev*,int const*,scalar_t__) ;
 int hinic_port_del_mac (struct hinic_dev*,int ,scalar_t__) ;
 int is_valid_ether_addr (int const*) ;
 struct hinic_dev* netdev_priv (struct net_device*) ;
 int netif_err (struct hinic_dev*,int ,struct net_device*,char*) ;
 int netif_info (struct hinic_dev*,int ,struct net_device*,char*,int const,int const,int const,int const,int const,int const) ;
 int up (int *) ;

__attribute__((used)) static int change_mac_addr(struct net_device *netdev, const u8 *addr)
{
 struct hinic_dev *nic_dev = netdev_priv(netdev);
 u16 vid = 0;
 int err;

 if (!is_valid_ether_addr(addr))
  return -EADDRNOTAVAIL;

 netif_info(nic_dev, drv, netdev, "change mac addr = %02x %02x %02x %02x %02x %02x\n",
     addr[0], addr[1], addr[2], addr[3], addr[4], addr[5]);

 down(&nic_dev->mgmt_lock);

 do {
  err = hinic_port_del_mac(nic_dev, netdev->dev_addr, vid);
  if (err) {
   netif_err(nic_dev, drv, netdev,
      "Failed to delete mac\n");
   break;
  }

  err = hinic_port_add_mac(nic_dev, addr, vid);
  if (err) {
   netif_err(nic_dev, drv, netdev, "Failed to add mac\n");
   break;
  }

  vid = find_next_bit(nic_dev->vlan_bitmap, VLAN_N_VID, vid + 1);
 } while (vid != VLAN_N_VID);

 up(&nic_dev->mgmt_lock);
 return err;
}
