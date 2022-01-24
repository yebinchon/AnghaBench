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
struct sk_buff {scalar_t__ data; scalar_t__ cb; } ;
struct mt76_wcid {int /*<<< orphan*/ * rx_key_pn; int /*<<< orphan*/  rx_check_pn; } ;
struct mt76_rx_status {int flag; size_t tid; int /*<<< orphan*/  iv; struct mt76_wcid* wcid; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int RX_FLAG_DECRYPTED ; 
 int RX_FLAG_IV_STRIPPED ; 
 int RX_FLAG_PN_VALIDATED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ieee80211_hdr*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *skb)
{
	struct mt76_rx_status *status = (struct mt76_rx_status *)skb->cb;
	struct mt76_wcid *wcid = status->wcid;
	struct ieee80211_hdr *hdr;
	int ret;

	if (!(status->flag & RX_FLAG_DECRYPTED))
		return 0;

	if (!wcid || !wcid->rx_check_pn)
		return 0;

	if (!(status->flag & RX_FLAG_IV_STRIPPED)) {
		/*
		 * Validate the first fragment both here and in mac80211
		 * All further fragments will be validated by mac80211 only.
		 */
		hdr = (struct ieee80211_hdr *)skb->data;
		if (FUNC2(hdr) &&
		    !FUNC1(hdr->frame_control))
			return 0;
	}

	FUNC0(sizeof(status->iv) != sizeof(wcid->rx_key_pn[0]));
	ret = FUNC3(status->iv, wcid->rx_key_pn[status->tid],
		     sizeof(status->iv));
	if (ret <= 0)
		return -EINVAL; /* replay */

	FUNC4(wcid->rx_key_pn[status->tid], status->iv, sizeof(status->iv));

	if (status->flag & RX_FLAG_IV_STRIPPED)
		status->flag |= RX_FLAG_PN_VALIDATED;

	return 0;
}