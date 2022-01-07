
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xlgmac_hw_ops {int (* update_vlan_hash_table ) (struct xlgmac_pdata*) ;} ;
struct xlgmac_pdata {int active_vlans; struct xlgmac_hw_ops hw_ops; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 struct xlgmac_pdata* netdev_priv (struct net_device*) ;
 int set_bit (int ,int ) ;
 int stub1 (struct xlgmac_pdata*) ;

__attribute__((used)) static int xlgmac_vlan_rx_add_vid(struct net_device *netdev,
      __be16 proto,
      u16 vid)
{
 struct xlgmac_pdata *pdata = netdev_priv(netdev);
 struct xlgmac_hw_ops *hw_ops = &pdata->hw_ops;

 set_bit(vid, pdata->active_vlans);
 hw_ops->update_vlan_hash_table(pdata);

 return 0;
}
