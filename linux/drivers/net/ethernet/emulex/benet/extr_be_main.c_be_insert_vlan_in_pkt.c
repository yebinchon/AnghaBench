
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct be_wrb_params {int features; } ;
struct be_adapter {scalar_t__ qnq_vid; scalar_t__ pvid; } ;


 int BE_WRB_F_SET (int ,int ,int) ;
 int ETH_P_8021Q ;
 int GFP_ATOMIC ;
 int VLAN_SKIP_HW ;
 int __vlan_hwaccel_clear_tag (struct sk_buff*) ;
 scalar_t__ be_get_tx_vlan_tag (struct be_adapter*,struct sk_buff*) ;
 int htons (int ) ;
 scalar_t__ qnq_async_evt_rcvd (struct be_adapter*) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 struct sk_buff* vlan_insert_tag_set_proto (struct sk_buff*,int ,scalar_t__) ;

__attribute__((used)) static struct sk_buff *be_insert_vlan_in_pkt(struct be_adapter *adapter,
          struct sk_buff *skb,
          struct be_wrb_params
          *wrb_params)
{
 bool insert_vlan = 0;
 u16 vlan_tag = 0;

 skb = skb_share_check(skb, GFP_ATOMIC);
 if (unlikely(!skb))
  return skb;

 if (skb_vlan_tag_present(skb)) {
  vlan_tag = be_get_tx_vlan_tag(adapter, skb);
  insert_vlan = 1;
 }

 if (qnq_async_evt_rcvd(adapter) && adapter->pvid) {
  if (!insert_vlan) {
   vlan_tag = adapter->pvid;
   insert_vlan = 1;
  }



  BE_WRB_F_SET(wrb_params->features, VLAN_SKIP_HW, 1);
 }

 if (insert_vlan) {
  skb = vlan_insert_tag_set_proto(skb, htons(ETH_P_8021Q),
      vlan_tag);
  if (unlikely(!skb))
   return skb;
  __vlan_hwaccel_clear_tag(skb);
 }


 if (adapter->qnq_vid) {
  vlan_tag = adapter->qnq_vid;
  skb = vlan_insert_tag_set_proto(skb, htons(ETH_P_8021Q),
      vlan_tag);
  if (unlikely(!skb))
   return skb;
  BE_WRB_F_SET(wrb_params->features, VLAN_SKIP_HW, 1);
 }

 return skb;
}
