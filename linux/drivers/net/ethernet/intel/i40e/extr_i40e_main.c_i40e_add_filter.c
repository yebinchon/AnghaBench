
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct i40e_vsi {int has_vlan_filter; TYPE_1__* back; int flags; int mac_filter_hash; } ;
struct i40e_mac_filter {scalar_t__ state; int hlist; scalar_t__ vlan; int macaddr; } ;
typedef scalar_t__ s16 ;
struct TYPE_2__ {int state; } ;


 int GFP_ATOMIC ;
 scalar_t__ I40E_FILTER_ACTIVE ;
 scalar_t__ I40E_FILTER_NEW ;
 scalar_t__ I40E_FILTER_REMOVE ;
 int I40E_VSI_FLAG_FILTER_CHANGED ;
 int INIT_HLIST_NODE (int *) ;
 int __I40E_MACVLAN_SYNC_PENDING ;
 int ether_addr_copy (int ,int const*) ;
 int hash_add (int ,int *,int ) ;
 int i40e_addr_to_hkey (int const*) ;
 struct i40e_mac_filter* i40e_find_filter (struct i40e_vsi*,int const*,scalar_t__) ;
 struct i40e_mac_filter* kzalloc (int,int ) ;
 int set_bit (int ,int ) ;

struct i40e_mac_filter *i40e_add_filter(struct i40e_vsi *vsi,
     const u8 *macaddr, s16 vlan)
{
 struct i40e_mac_filter *f;
 u64 key;

 if (!vsi || !macaddr)
  return ((void*)0);

 f = i40e_find_filter(vsi, macaddr, vlan);
 if (!f) {
  f = kzalloc(sizeof(*f), GFP_ATOMIC);
  if (!f)
   return ((void*)0);




  if (vlan >= 0)
   vsi->has_vlan_filter = 1;

  ether_addr_copy(f->macaddr, macaddr);
  f->vlan = vlan;
  f->state = I40E_FILTER_NEW;
  INIT_HLIST_NODE(&f->hlist);

  key = i40e_addr_to_hkey(macaddr);
  hash_add(vsi->mac_filter_hash, &f->hlist, key);

  vsi->flags |= I40E_VSI_FLAG_FILTER_CHANGED;
  set_bit(__I40E_MACVLAN_SYNC_PENDING, vsi->back->state);
 }
 if (f->state == I40E_FILTER_REMOVE)
  f->state = I40E_FILTER_ACTIVE;

 return f;
}
