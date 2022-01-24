#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_tx_info {int dummy; } ;
struct b43_wldev {TYPE_1__* wl; } ;
struct b43_txstatus {int /*<<< orphan*/  cookie; } ;
struct b43_pio_txqueue {unsigned int buffer_used; int free_packet_slots; int stopped; int /*<<< orphan*/  queue_prio; int /*<<< orphan*/  packets_list; } ;
struct b43_pio_txpacket {int /*<<< orphan*/  list; TYPE_2__* skb; } ;
struct TYPE_5__ {unsigned int len; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ieee80211_tx_info* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,struct ieee80211_tx_info*,struct b43_txstatus const*) ; 
 unsigned int FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct b43_pio_txqueue* FUNC7 (struct b43_wldev*,int /*<<< orphan*/ ,struct b43_pio_txpacket**) ; 
 unsigned int FUNC8 (unsigned int,int) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10(struct b43_wldev *dev,
			     const struct b43_txstatus *status)
{
	struct b43_pio_txqueue *q;
	struct b43_pio_txpacket *pack = NULL;
	unsigned int total_len;
	struct ieee80211_tx_info *info;

	q = FUNC7(dev, status->cookie, &pack);
	if (FUNC9(!q))
		return;
	FUNC0(!pack);

	info = FUNC1(pack->skb);

	FUNC2(dev, info, status);

	total_len = pack->skb->len + FUNC3(dev);
	total_len = FUNC8(total_len, 4);
	q->buffer_used -= total_len;
	q->free_packet_slots += 1;

	FUNC4(dev->wl->hw, pack->skb);
	pack->skb = NULL;
	FUNC6(&pack->list, &q->packets_list);

	if (q->stopped) {
		FUNC5(dev->wl->hw, q->queue_prio);
		q->stopped = false;
	}
}