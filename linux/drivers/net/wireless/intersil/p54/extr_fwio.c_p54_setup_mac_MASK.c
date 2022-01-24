#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {void* osc_start_delay; void* lpf_bandwidth; void* ref_clock; scalar_t__ rx_ed_threshold; scalar_t__ rx_rssi_threshold; scalar_t__ mcast_window; scalar_t__ sbss_offset; void* basic_rate_mask; void* truncate; void* timer; void* rxhw; void* max_rx; void* rx_addr; } ;
struct TYPE_7__ {void* unalloc0; void* wakeup_timer; void* rxhw; void* max_rx; void* rx_addr; int /*<<< orphan*/  rts_rates; void* basic_rate_mask; } ;
struct p54_setup_mac {int rx_antenna; TYPE_4__ v2; TYPE_3__ v1; scalar_t__ rx_align; int /*<<< orphan*/  bssid; int /*<<< orphan*/  mac_addr; void* mac_mode; } ;
struct p54_common {int mode; int filter_flags; int rx_diversity_mask; int fw_var; int basic_rate_mask; int rx_end; int rx_mtu; int rxhw; int wakeup_timer; int phy_idle; int /*<<< orphan*/  bssid; int /*<<< orphan*/  mac_addr; TYPE_2__* hw; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ conf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int FIF_OTHER_BSS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IEEE80211_CONF_IDLE ; 
#define  NL80211_IFTYPE_ADHOC 132 
#define  NL80211_IFTYPE_AP 131 
#define  NL80211_IFTYPE_MESH_POINT 130 
#define  NL80211_IFTYPE_MONITOR 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  P54_CONTROL_TYPE_SETUP ; 
 int P54_FILTER_TYPE_AP ; 
 int P54_FILTER_TYPE_HIBERNATE ; 
 int P54_FILTER_TYPE_IBSS ; 
 int P54_FILTER_TYPE_PROMISCUOUS ; 
 int P54_FILTER_TYPE_STATION ; 
 int P54_FILTER_TYPE_TRANSPARENT ; 
 int /*<<< orphan*/  P54_HDR_FLAG_CONTROL_OPSET ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC4 (struct p54_common*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct p54_common*,struct sk_buff*) ; 
 struct p54_setup_mac* FUNC6 (struct sk_buff*,int) ; 

int FUNC7(struct p54_common *priv)
{
	struct sk_buff *skb;
	struct p54_setup_mac *setup;
	u16 mode;

	skb = FUNC4(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*setup),
			    P54_CONTROL_TYPE_SETUP, GFP_ATOMIC);
	if (!skb)
		return -ENOMEM;

	setup = FUNC6(skb, sizeof(*setup));
	if (!(priv->hw->conf.flags & IEEE80211_CONF_IDLE)) {
		switch (priv->mode) {
		case NL80211_IFTYPE_STATION:
			mode = P54_FILTER_TYPE_STATION;
			break;
		case NL80211_IFTYPE_AP:
			mode = P54_FILTER_TYPE_AP;
			break;
		case NL80211_IFTYPE_ADHOC:
		case NL80211_IFTYPE_MESH_POINT:
			mode = P54_FILTER_TYPE_IBSS;
			break;
		case NL80211_IFTYPE_MONITOR:
			mode = P54_FILTER_TYPE_PROMISCUOUS;
			break;
		default:
			mode = P54_FILTER_TYPE_HIBERNATE;
			break;
		}

		/*
		 * "TRANSPARENT and PROMISCUOUS are mutually exclusive"
		 * STSW45X0C LMAC API - page 12
		 */
		if (priv->filter_flags & FIF_OTHER_BSS &&
		    (mode != P54_FILTER_TYPE_PROMISCUOUS))
			mode |= P54_FILTER_TYPE_TRANSPARENT;
	} else {
		mode = P54_FILTER_TYPE_HIBERNATE;
	}

	setup->mac_mode = FUNC0(mode);
	FUNC2(setup->mac_addr, priv->mac_addr, ETH_ALEN);
	FUNC2(setup->bssid, priv->bssid, ETH_ALEN);
	setup->rx_antenna = 2 & priv->rx_diversity_mask; /* automatic */
	setup->rx_align = 0;
	if (priv->fw_var < 0x500) {
		setup->v1.basic_rate_mask = FUNC1(priv->basic_rate_mask);
		FUNC3(setup->v1.rts_rates, 0, 8);
		setup->v1.rx_addr = FUNC1(priv->rx_end);
		setup->v1.max_rx = FUNC0(priv->rx_mtu);
		setup->v1.rxhw = FUNC0(priv->rxhw);
		setup->v1.wakeup_timer = FUNC0(priv->wakeup_timer);
		setup->v1.unalloc0 = FUNC0(0);
	} else {
		setup->v2.rx_addr = FUNC1(priv->rx_end);
		setup->v2.max_rx = FUNC0(priv->rx_mtu);
		setup->v2.rxhw = FUNC0(priv->rxhw);
		setup->v2.timer = FUNC0(priv->wakeup_timer);
		setup->v2.truncate = FUNC0(48896);
		setup->v2.basic_rate_mask = FUNC1(priv->basic_rate_mask);
		setup->v2.sbss_offset = 0;
		setup->v2.mcast_window = 0;
		setup->v2.rx_rssi_threshold = 0;
		setup->v2.rx_ed_threshold = 0;
		setup->v2.ref_clock = FUNC1(644245094);
		setup->v2.lpf_bandwidth = FUNC0(65535);
		setup->v2.osc_start_delay = FUNC0(65535);
	}
	FUNC5(priv, skb);
	priv->phy_idle = mode == P54_FILTER_TYPE_HIBERNATE;
	return 0;
}