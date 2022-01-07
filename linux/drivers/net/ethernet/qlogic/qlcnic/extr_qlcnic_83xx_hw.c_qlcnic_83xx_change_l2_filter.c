
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct qlcnic_host_tx_ring {int dummy; } ;
struct qlcnic_adapter {int dummy; } ;


 int ETH_ALEN ;
 int QLCNIC_MAC_ADD ;
 int memcpy (int **,int *,int) ;
 int qlcnic_83xx_sre_macaddr_change (struct qlcnic_adapter*,int *,int ,int ) ;

void qlcnic_83xx_change_l2_filter(struct qlcnic_adapter *adapter, u64 *addr,
      u16 vlan_id,
      struct qlcnic_host_tx_ring *tx_ring)
{
 u8 mac[ETH_ALEN];
 memcpy(&mac, addr, ETH_ALEN);
 qlcnic_83xx_sre_macaddr_change(adapter, mac, vlan_id, QLCNIC_MAC_ADD);
}
