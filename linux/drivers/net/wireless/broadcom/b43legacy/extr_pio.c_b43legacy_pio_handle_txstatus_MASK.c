#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* rates; } ;
struct ieee80211_tx_info {TYPE_3__ status; int /*<<< orphan*/  flags; } ;
struct b43legacy_wldev {TYPE_4__* wl; } ;
struct b43legacy_txstatus {scalar_t__ rts_count; int frame_count; scalar_t__ acked; int /*<<< orphan*/  cookie; } ;
struct b43legacy_txhdr_fw3 {int dummy; } ;
struct b43legacy_pioqueue {int /*<<< orphan*/  txtask; int /*<<< orphan*/  txqueue; int /*<<< orphan*/  tx_devq_used; int /*<<< orphan*/  tx_devq_packets; } ;
struct b43legacy_pio_txpacket {TYPE_6__* skb; } ;
struct TYPE_13__ {scalar_t__ len; } ;
struct TYPE_8__ {scalar_t__ short_frame_max_tx_count; } ;
struct TYPE_12__ {TYPE_1__ conf; } ;
struct TYPE_11__ {TYPE_5__* hw; } ;
struct TYPE_9__ {int count; int idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ieee80211_tx_info* FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_pio_txpacket*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct b43legacy_pioqueue* FUNC6 (struct b43legacy_wldev*,int /*<<< orphan*/ ,struct b43legacy_pio_txpacket**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct b43legacy_wldev *dev,
				   const struct b43legacy_txstatus *status)
{
	struct b43legacy_pioqueue *queue;
	struct b43legacy_pio_txpacket *packet;
	struct ieee80211_tx_info *info;
	int retry_limit;

	queue = FUNC6(dev, status->cookie, &packet);
	FUNC0(!queue);

	if (!packet->skb)
		return;

	queue->tx_devq_packets--;
	queue->tx_devq_used -= (packet->skb->len +
				sizeof(struct b43legacy_txhdr_fw3));

	info = FUNC1(packet->skb);

	/* preserve the confiured retry limit before clearing the status
	 * The xmit function has overwritten the rc's value with the actual
	 * retry limit done by the hardware */
	retry_limit = info->status.rates[0].count;
	FUNC3(info);

	if (status->acked)
		info->flags |= IEEE80211_TX_STAT_ACK;

	if (status->rts_count > dev->wl->hw->conf.short_frame_max_tx_count) {
		/*
		 * If the short retries (RTS, not data frame) have exceeded
		 * the limit, the hw will not have tried the selected rate,
		 * but will have used the fallback rate instead.
		 * Don't let the rate control count attempts for the selected
		 * rate in this case, otherwise the statistics will be off.
		 */
		info->status.rates[0].count = 0;
		info->status.rates[1].count = status->frame_count;
	} else {
		if (status->frame_count > retry_limit) {
			info->status.rates[0].count = retry_limit;
			info->status.rates[1].count = status->frame_count -
					retry_limit;

		} else {
			info->status.rates[0].count = status->frame_count;
			info->status.rates[1].idx = -1;
		}
	}
	FUNC4(dev->wl->hw, packet->skb);
	packet->skb = NULL;

	FUNC2(packet, 1);
	/* If there are packets on the txqueue, poke the tasklet
	 * to transmit them.
	 */
	if (!FUNC5(&queue->txqueue))
		FUNC7(&queue->txtask);
}