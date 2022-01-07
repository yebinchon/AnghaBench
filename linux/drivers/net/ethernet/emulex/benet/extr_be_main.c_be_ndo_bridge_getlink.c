
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct be_adapter {int if_handle; int pdev; } ;


 scalar_t__ BEx_chip (struct be_adapter*) ;
 int BRIDGE_MODE_VEB ;
 int BRIDGE_MODE_VEPA ;
 scalar_t__ PORT_FWD_TYPE_PASSTHRU ;
 scalar_t__ PORT_FWD_TYPE_VEB ;
 scalar_t__ PORT_FWD_TYPE_VEPA ;
 int be_cmd_get_hsw_config (struct be_adapter*,int *,int ,int ,scalar_t__*,int *) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;
 int ndo_dflt_bridge_getlink (struct sk_buff*,int ,int ,struct net_device*,int ,int ,int ,int,int ,int *) ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int pci_sriov_get_totalvfs (int ) ;

__attribute__((used)) static int be_ndo_bridge_getlink(struct sk_buff *skb, u32 pid, u32 seq,
     struct net_device *dev, u32 filter_mask,
     int nlflags)
{
 struct be_adapter *adapter = netdev_priv(dev);
 int status = 0;
 u8 hsw_mode;


 if (BEx_chip(adapter) || lancer_chip(adapter)) {

  if (!pci_sriov_get_totalvfs(adapter->pdev))
   return 0;
  hsw_mode = PORT_FWD_TYPE_VEB;
 } else {
  status = be_cmd_get_hsw_config(adapter, ((void*)0), 0,
            adapter->if_handle, &hsw_mode,
            ((void*)0));
  if (status)
   return 0;

  if (hsw_mode == PORT_FWD_TYPE_PASSTHRU)
   return 0;
 }

 return ndo_dflt_bridge_getlink(skb, pid, seq, dev,
           hsw_mode == PORT_FWD_TYPE_VEPA ?
           BRIDGE_MODE_VEPA : BRIDGE_MODE_VEB,
           0, 0, nlflags, filter_mask, ((void*)0));
}
