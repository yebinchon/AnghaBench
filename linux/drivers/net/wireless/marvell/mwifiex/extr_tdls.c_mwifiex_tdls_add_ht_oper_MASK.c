#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  cap_info; } ;
struct TYPE_9__ {int /*<<< orphan*/  ht_oper; TYPE_2__ ht_capb; } ;
struct mwifiex_sta_node {TYPE_4__ tdls_cap; } ;
struct mwifiex_bssdescriptor {int /*<<< orphan*/  channel; TYPE_3__* bcn_ht_oper; scalar_t__ bcn_ht_cap; } ;
struct TYPE_6__ {struct mwifiex_bssdescriptor bss_descriptor; } ;
struct mwifiex_private {TYPE_5__* adapter; TYPE_1__ curr_bss_params; } ;
struct ieee80211_ht_operation {int /*<<< orphan*/  ht_param; int /*<<< orphan*/  primary_chan; } ;
struct TYPE_10__ {int /*<<< orphan*/  hw_dot_11n_dev_cap; } ;
struct TYPE_8__ {int /*<<< orphan*/  ht_param; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARN ; 
 int /*<<< orphan*/  WLAN_EID_HT_OPERATION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ieee80211_ht_operation*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct mwifiex_sta_node* FUNC7 (struct mwifiex_private*,scalar_t__ const*) ; 
 scalar_t__* FUNC8 (struct sk_buff*,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(struct mwifiex_private *priv, const u8 *mac,
			 u8 vht_enabled, struct sk_buff *skb)
{
	struct ieee80211_ht_operation *ht_oper;
	struct mwifiex_sta_node *sta_ptr;
	struct mwifiex_bssdescriptor *bss_desc =
					&priv->curr_bss_params.bss_descriptor;
	u8 *pos;

	sta_ptr = FUNC7(priv, mac);
	if (FUNC9(!sta_ptr)) {
		FUNC5(priv->adapter, ERROR,
			    "TDLS peer station not found in list\n");
		return -1;
	}

	if (!(FUNC3(sta_ptr->tdls_cap.ht_capb.cap_info))) {
		FUNC5(priv->adapter, WARN,
			    "TDLS peer doesn't support ht capabilities\n");
		return 0;
	}

	pos = FUNC8(skb, sizeof(struct ieee80211_ht_operation) + 2);
	*pos++ = WLAN_EID_HT_OPERATION;
	*pos++ = sizeof(struct ieee80211_ht_operation);
	ht_oper = (void *)pos;

	ht_oper->primary_chan = bss_desc->channel;

	/* follow AP's channel bandwidth */
	if (FUNC2(priv->adapter->hw_dot_11n_dev_cap) &&
	    bss_desc->bcn_ht_cap &&
	    FUNC1(bss_desc->bcn_ht_oper->ht_param))
		ht_oper->ht_param = bss_desc->bcn_ht_oper->ht_param;

	if (vht_enabled) {
		ht_oper->ht_param =
			  FUNC6(bss_desc->channel);
		ht_oper->ht_param |= FUNC0(2);
	}

	FUNC4(&sta_ptr->tdls_cap.ht_oper, ht_oper,
	       sizeof(struct ieee80211_ht_operation));

	return 0;
}