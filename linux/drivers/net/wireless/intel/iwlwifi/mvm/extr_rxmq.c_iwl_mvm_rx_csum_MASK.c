#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct iwl_rx_mpdu_desc {int /*<<< orphan*/  l3l4_flags; } ;
struct iwl_mvm_vif {int features; } ;
struct iwl_mvm_sta {int /*<<< orphan*/  vif; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int IWL_RX_L3L4_IP_HDR_CSUM_OK ; 
 int IWL_RX_L3L4_L3_PROTO_MASK ; 
 int IWL_RX_L3L4_TCP_UDP_CSUM_OK ; 
 int IWL_RX_L3_PROTO_POS ; 
 scalar_t__ IWL_RX_L3_TYPE_IPV6 ; 
 scalar_t__ IWL_RX_L3_TYPE_IPV6_FRAG ; 
 int NETIF_F_RXCSUM ; 
 struct iwl_mvm_sta* FUNC0 (struct ieee80211_sta*) ; 
 struct iwl_mvm_vif* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_sta *sta,
			    struct sk_buff *skb,
			    struct iwl_rx_mpdu_desc *desc)
{
	struct iwl_mvm_sta *mvmsta = FUNC0(sta);
	struct iwl_mvm_vif *mvmvif = FUNC1(mvmsta->vif);
	u16 flags = FUNC2(desc->l3l4_flags);
	u8 l3_prot = (u8)((flags & IWL_RX_L3L4_L3_PROTO_MASK) >>
			  IWL_RX_L3_PROTO_POS);

	if (mvmvif->features & NETIF_F_RXCSUM &&
	    flags & IWL_RX_L3L4_TCP_UDP_CSUM_OK &&
	    (flags & IWL_RX_L3L4_IP_HDR_CSUM_OK ||
	     l3_prot == IWL_RX_L3_TYPE_IPV6 ||
	     l3_prot == IWL_RX_L3_TYPE_IPV6_FRAG))
		skb->ip_summed = CHECKSUM_UNNECESSARY;
}