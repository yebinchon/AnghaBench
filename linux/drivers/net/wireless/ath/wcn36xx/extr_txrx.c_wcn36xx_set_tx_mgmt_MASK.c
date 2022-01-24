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
struct wcn36xx_vif {scalar_t__ is_joining; int /*<<< orphan*/  self_dpu_desc_index; int /*<<< orphan*/  self_sta_index; } ;
struct wcn36xx_tx_bd {int dpu_ne; int ub; int ack_policy; int /*<<< orphan*/  queue_id; void* bd_rate; int /*<<< orphan*/  dpu_desc_idx; int /*<<< orphan*/  sta_index; } ;
struct wcn36xx {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct ieee80211_qos_hdr {int dummy; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr2; } ;

/* Variables and functions */
 scalar_t__ NL80211_BAND_5GHZ ; 
 scalar_t__ FUNC0 (struct wcn36xx*) ; 
 void* WCN36XX_BD_RATE_CTRL ; 
 void* WCN36XX_BD_RATE_MGMT ; 
 int /*<<< orphan*/  WCN36XX_TID ; 
 int /*<<< orphan*/  WCN36XX_TX_B_WQ_ID ; 
 int /*<<< orphan*/  WCN36XX_TX_U_WQ_ID ; 
 struct wcn36xx_vif* FUNC1 (struct wcn36xx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wcn36xx_tx_bd*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(struct wcn36xx_tx_bd *bd,
				struct wcn36xx *wcn,
				struct wcn36xx_vif **vif_priv,
				struct sk_buff *skb,
				bool bcast)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct wcn36xx_vif *__vif_priv =
		FUNC1(wcn, hdr->addr2);
	bd->sta_index = __vif_priv->self_sta_index;
	bd->dpu_desc_idx = __vif_priv->self_dpu_desc_index;
	bd->dpu_ne = 1;

	/* default rate for unicast */
	if (FUNC4(hdr->frame_control))
		bd->bd_rate = (FUNC0(wcn) == NL80211_BAND_5GHZ) ?
			WCN36XX_BD_RATE_CTRL :
			WCN36XX_BD_RATE_MGMT;
	else if (FUNC2(hdr->frame_control))
		bd->bd_rate = WCN36XX_BD_RATE_CTRL;
	else
		FUNC7("frame control type unknown\n");

	/*
	 * In joining state trick hardware that probe is sent as
	 * unicast even if address is broadcast.
	 */
	if (__vif_priv->is_joining &&
	    FUNC5(hdr->frame_control))
		bcast = false;

	if (bcast) {
		/* broadcast */
		bd->ub = 1;
		/* No ack needed not unicast */
		bd->ack_policy = 1;
		bd->queue_id = WCN36XX_TX_B_WQ_ID;
	} else
		bd->queue_id = WCN36XX_TX_U_WQ_ID;
	*vif_priv = __vif_priv;

	FUNC6(bd,
			   FUNC3(hdr->frame_control) ?
			   sizeof(struct ieee80211_qos_hdr) :
			   sizeof(struct ieee80211_hdr_3addr),
			   skb->len, WCN36XX_TID);
}