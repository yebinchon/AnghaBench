
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct qlcnic_filter {int fnode; } ;
struct TYPE_2__ {int fnum; } ;
struct qlcnic_adapter {TYPE_1__ rx_fhash; } ;


 int QLCNIC_MAC_ADD ;
 int QLCNIC_MAC_DEL ;
 int QLCNIC_MAC_VLAN_ADD ;
 int QLCNIC_MAC_VLAN_DEL ;
 int hlist_del (int *) ;
 int qlcnic_sre_macaddr_change (struct qlcnic_adapter*,void*,scalar_t__,int ) ;

__attribute__((used)) static void qlcnic_delete_rx_list_mac(struct qlcnic_adapter *adapter,
          struct qlcnic_filter *fil,
          void *addr, u16 vlan_id)
{
 int ret;
 u8 op;

 op = vlan_id ? QLCNIC_MAC_VLAN_ADD : QLCNIC_MAC_ADD;
 ret = qlcnic_sre_macaddr_change(adapter, addr, vlan_id, op);
 if (ret)
  return;

 op = vlan_id ? QLCNIC_MAC_VLAN_DEL : QLCNIC_MAC_DEL;
 ret = qlcnic_sre_macaddr_change(adapter, addr, vlan_id, op);
 if (!ret) {
  hlist_del(&fil->fnode);
  adapter->rx_fhash.fnum--;
 }
}
