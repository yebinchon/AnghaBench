
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ encapsulation; } ;
struct be_wrb_params {int features; int vlan_tag; int lso_mss; } ;
struct be_adapter {int dummy; } ;
struct TYPE_2__ {int gso_size; } ;


 int BE_WRB_F_SET (int ,int ,int) ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int CRC ;
 int IPCS ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int LSO ;
 int LSO6 ;
 int TCPCS ;
 int UDPCS ;
 int VLAN ;
 int be_get_tx_vlan_tag (struct be_adapter*,struct sk_buff*) ;
 int lancer_chip (struct be_adapter*) ;
 scalar_t__ skb_inner_ip_proto (struct sk_buff*) ;
 scalar_t__ skb_ip_proto (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 scalar_t__ skb_is_gso_v6 (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;

__attribute__((used)) static void be_get_wrb_params_from_skb(struct be_adapter *adapter,
           struct sk_buff *skb,
           struct be_wrb_params *wrb_params)
{
 u16 proto;

 if (skb_is_gso(skb)) {
  BE_WRB_F_SET(wrb_params->features, LSO, 1);
  wrb_params->lso_mss = skb_shinfo(skb)->gso_size;
  if (skb_is_gso_v6(skb) && !lancer_chip(adapter))
   BE_WRB_F_SET(wrb_params->features, LSO6, 1);
 } else if (skb->ip_summed == CHECKSUM_PARTIAL) {
  if (skb->encapsulation) {
   BE_WRB_F_SET(wrb_params->features, IPCS, 1);
   proto = skb_inner_ip_proto(skb);
  } else {
   proto = skb_ip_proto(skb);
  }
  if (proto == IPPROTO_TCP)
   BE_WRB_F_SET(wrb_params->features, TCPCS, 1);
  else if (proto == IPPROTO_UDP)
   BE_WRB_F_SET(wrb_params->features, UDPCS, 1);
 }

 if (skb_vlan_tag_present(skb)) {
  BE_WRB_F_SET(wrb_params->features, VLAN, 1);
  wrb_params->vlan_tag = be_get_tx_vlan_tag(adapter, skb);
 }

 BE_WRB_F_SET(wrb_params->features, CRC, 1);
}
