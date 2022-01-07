
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iavf_vlan_filter {int remove; } ;
struct iavf_adapter {int mac_vlan_list_lock; int aq_required; } ;


 int IAVF_FLAG_AQ_DEL_VLAN_FILTER ;
 struct iavf_vlan_filter* iavf_find_vlan (struct iavf_adapter*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void iavf_del_vlan(struct iavf_adapter *adapter, u16 vlan)
{
 struct iavf_vlan_filter *f;

 spin_lock_bh(&adapter->mac_vlan_list_lock);

 f = iavf_find_vlan(adapter, vlan);
 if (f) {
  f->remove = 1;
  adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
 }

 spin_unlock_bh(&adapter->mac_vlan_list_lock);
}
