
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iavf_mac_filter {int add; int remove; int list; int macaddr; } ;
struct iavf_adapter {int aq_required; int mac_filter_list; } ;


 int GFP_ATOMIC ;
 int IAVF_FLAG_AQ_ADD_MAC_FILTER ;
 int ether_addr_copy (int ,int const*) ;
 struct iavf_mac_filter* iavf_find_filter (struct iavf_adapter*,int const*) ;
 struct iavf_mac_filter* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct
iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
     const u8 *macaddr)
{
 struct iavf_mac_filter *f;

 if (!macaddr)
  return ((void*)0);

 f = iavf_find_filter(adapter, macaddr);
 if (!f) {
  f = kzalloc(sizeof(*f), GFP_ATOMIC);
  if (!f)
   return f;

  ether_addr_copy(f->macaddr, macaddr);

  list_add_tail(&f->list, &adapter->mac_filter_list);
  f->add = 1;
  adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
 } else {
  f->remove = 0;
 }

 return f;
}
