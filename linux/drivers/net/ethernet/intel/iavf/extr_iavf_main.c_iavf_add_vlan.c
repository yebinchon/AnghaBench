
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iavf_vlan_filter {int add; int list; int vlan; } ;
struct iavf_adapter {int mac_vlan_list_lock; int aq_required; int vlan_filter_list; } ;


 int GFP_ATOMIC ;
 int IAVF_FLAG_AQ_ADD_VLAN_FILTER ;
 struct iavf_vlan_filter* iavf_find_vlan (struct iavf_adapter*,int ) ;
 struct iavf_vlan_filter* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct
iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter, u16 vlan)
{
 struct iavf_vlan_filter *f = ((void*)0);

 spin_lock_bh(&adapter->mac_vlan_list_lock);

 f = iavf_find_vlan(adapter, vlan);
 if (!f) {
  f = kzalloc(sizeof(*f), GFP_ATOMIC);
  if (!f)
   goto clearout;

  f->vlan = vlan;

  list_add_tail(&f->list, &adapter->vlan_filter_list);
  f->add = 1;
  adapter->aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
 }

clearout:
 spin_unlock_bh(&adapter->mac_vlan_list_lock);
 return f;
}
