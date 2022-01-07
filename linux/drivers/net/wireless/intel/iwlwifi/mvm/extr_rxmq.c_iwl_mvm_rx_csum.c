
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct sk_buff {int ip_summed; } ;
struct iwl_rx_mpdu_desc {int l3l4_flags; } ;
struct iwl_mvm_vif {int features; } ;
struct iwl_mvm_sta {int vif; } ;
struct ieee80211_sta {int dummy; } ;


 int CHECKSUM_UNNECESSARY ;
 int IWL_RX_L3L4_IP_HDR_CSUM_OK ;
 int IWL_RX_L3L4_L3_PROTO_MASK ;
 int IWL_RX_L3L4_TCP_UDP_CSUM_OK ;
 int IWL_RX_L3_PROTO_POS ;
 scalar_t__ IWL_RX_L3_TYPE_IPV6 ;
 scalar_t__ IWL_RX_L3_TYPE_IPV6_FRAG ;
 int NETIF_F_RXCSUM ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void iwl_mvm_rx_csum(struct ieee80211_sta *sta,
       struct sk_buff *skb,
       struct iwl_rx_mpdu_desc *desc)
{
 struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(mvmsta->vif);
 u16 flags = le16_to_cpu(desc->l3l4_flags);
 u8 l3_prot = (u8)((flags & IWL_RX_L3L4_L3_PROTO_MASK) >>
     IWL_RX_L3_PROTO_POS);

 if (mvmvif->features & NETIF_F_RXCSUM &&
     flags & IWL_RX_L3L4_TCP_UDP_CSUM_OK &&
     (flags & IWL_RX_L3L4_IP_HDR_CSUM_OK ||
      l3_prot == IWL_RX_L3_TYPE_IPV6 ||
      l3_prot == IWL_RX_L3_TYPE_IPV6_FRAG))
  skb->ip_summed = CHECKSUM_UNNECESSARY;
}
