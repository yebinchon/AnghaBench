
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct bnx2x_vlan_entry {int hw; int link; int vid; } ;
struct bnx2x {int vlan_reg; } ;
typedef int __be16 ;


 int DP (int ,char*,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NETIF_MSG_IFUP ;
 int bnx2x_vlan_configure (struct bnx2x*,int) ;
 struct bnx2x_vlan_entry* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int bnx2x_vlan_rx_add_vid(struct net_device *dev, __be16 proto, u16 vid)
{
 struct bnx2x *bp = netdev_priv(dev);
 struct bnx2x_vlan_entry *vlan;

 DP(NETIF_MSG_IFUP, "Adding VLAN %d\n", vid);

 vlan = kmalloc(sizeof(*vlan), GFP_KERNEL);
 if (!vlan)
  return -ENOMEM;

 vlan->vid = vid;
 vlan->hw = 0;
 list_add_tail(&vlan->link, &bp->vlan_reg);

 if (netif_running(dev))
  bnx2x_vlan_configure(bp, 1);

 return 0;
}
