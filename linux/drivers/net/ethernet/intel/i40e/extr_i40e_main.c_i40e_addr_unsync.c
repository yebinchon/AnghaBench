
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dev_addr; } ;
struct i40e_vsi {int dummy; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;


 scalar_t__ ether_addr_equal (int const*,int ) ;
 int i40e_del_mac_filter (struct i40e_vsi*,int const*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int i40e_addr_unsync(struct net_device *netdev, const u8 *addr)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;






 if (ether_addr_equal(addr, netdev->dev_addr))
  return 0;

 i40e_del_mac_filter(vsi, addr);

 return 0;
}
