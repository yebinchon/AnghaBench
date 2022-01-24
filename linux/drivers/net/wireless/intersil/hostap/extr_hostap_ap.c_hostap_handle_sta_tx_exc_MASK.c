#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sta_info {scalar_t__ tx_consecutive_exc; int tx_rate_idx; scalar_t__ tx_rate; int /*<<< orphan*/  addr; scalar_t__ tx_since_last_failure; } ;
struct sk_buff {scalar_t__ cb; scalar_t__ data; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; } ;
struct hostap_skb_tx_data {scalar_t__ rate; } ;
struct TYPE_7__ {TYPE_5__* ap; TYPE_1__* dev; } ;
typedef  TYPE_2__ local_info_t ;
struct TYPE_8__ {int /*<<< orphan*/  sta_table_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_AP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ WLAN_RATE_DECREASE_THRESHOLD ; 
 struct sta_info* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,struct sta_info*,TYPE_2__*) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(local_info_t *local, struct sk_buff *skb)
{
	struct sta_info *sta;
	struct ieee80211_hdr *hdr;
	struct hostap_skb_tx_data *meta;

	hdr = (struct ieee80211_hdr *) skb->data;
	meta = (struct hostap_skb_tx_data *) skb->cb;

	FUNC3(&local->ap->sta_table_lock);
	sta = FUNC1(local->ap, hdr->addr1);
	if (!sta) {
		FUNC4(&local->ap->sta_table_lock);
		FUNC0(DEBUG_AP, "%s: Could not find STA %pM"
		       " for this TX error (@%lu)\n",
		       local->dev->name, hdr->addr1, jiffies);
		return;
	}

	sta->tx_since_last_failure = 0;
	sta->tx_consecutive_exc++;

	if (sta->tx_consecutive_exc >= WLAN_RATE_DECREASE_THRESHOLD &&
	    sta->tx_rate_idx > 0 && meta->rate <= sta->tx_rate) {
		/* use next lower rate */
		int old, rate;
		old = rate = sta->tx_rate_idx;
		while (rate > 0) {
			rate--;
			if (FUNC2(rate, sta, local)) {
				sta->tx_rate_idx = rate;
				break;
			}
		}
		if (old != sta->tx_rate_idx) {
			switch (sta->tx_rate_idx) {
			case 0: sta->tx_rate = 10; break;
			case 1: sta->tx_rate = 20; break;
			case 2: sta->tx_rate = 55; break;
			case 3: sta->tx_rate = 110; break;
			default: sta->tx_rate = 0; break;
			}
			FUNC0(DEBUG_AP,
			       "%s: STA %pM TX rate lowered to %d\n",
			       local->dev->name, sta->addr, sta->tx_rate);
		}
		sta->tx_consecutive_exc = 0;
	}
	FUNC4(&local->ap->sta_table_lock);
}