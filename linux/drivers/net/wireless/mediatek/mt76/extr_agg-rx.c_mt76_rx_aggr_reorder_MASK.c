#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  size_t u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; scalar_t__ cb; } ;
struct mt76_wcid {int /*<<< orphan*/ * aggr; } ;
struct mt76_rx_tid {size_t head; size_t size; int started; int /*<<< orphan*/  lock; int /*<<< orphan*/  reorder_work; TYPE_1__* dev; scalar_t__ nframes; struct sk_buff** reorder_buf; scalar_t__ stopped; } ;
struct mt76_rx_status {size_t tid; size_t seqno; int /*<<< orphan*/  reorder_time; int /*<<< orphan*/  flag; int /*<<< orphan*/  aggr; struct mt76_wcid* wcid; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 size_t IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK ; 
 size_t IEEE80211_QOS_CTL_ACK_POLICY_MASK ; 
 size_t IEEE80211_QOS_CTL_ACK_POLICY_NORMAL ; 
 int /*<<< orphan*/  REORDER_TIMEOUT ; 
 int /*<<< orphan*/  RX_FLAG_DUP_VALIDATED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 size_t* FUNC3 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (size_t) ; 
 int FUNC6 (size_t,size_t) ; 
 size_t FUNC7 (size_t,size_t) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76_rx_tid*,struct sk_buff_head*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct mt76_rx_tid*,struct sk_buff_head*) ; 
 struct mt76_rx_tid* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC14 (struct mt76_wcid*) ; 

void FUNC15(struct sk_buff *skb, struct sk_buff_head *frames)
{
	struct mt76_rx_status *status = (struct mt76_rx_status *)skb->cb;
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct mt76_wcid *wcid = status->wcid;
	struct ieee80211_sta *sta;
	struct mt76_rx_tid *tid;
	bool sn_less;
	u16 seqno, head, size;
	u8 ackp, idx;

	FUNC0(frames, skb);

	sta = FUNC14(wcid);
	if (!sta)
		return;

	if (!status->aggr) {
		FUNC8(skb, frames);
		return;
	}

	/* not part of a BA session */
	ackp = *FUNC3(hdr) & IEEE80211_QOS_CTL_ACK_POLICY_MASK;
	if (ackp != IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK &&
	    ackp != IEEE80211_QOS_CTL_ACK_POLICY_NORMAL)
		return;

	tid = FUNC11(wcid->aggr[status->tid]);
	if (!tid)
		return;

	status->flag |= RX_FLAG_DUP_VALIDATED;
	FUNC12(&tid->lock);

	if (tid->stopped)
		goto out;

	head = tid->head;
	seqno = status->seqno;
	size = tid->size;
	sn_less = FUNC6(seqno, head);

	if (!tid->started) {
		if (sn_less)
			goto out;

		tid->started = true;
	}

	if (sn_less) {
		FUNC1(skb, frames);
		FUNC2(skb);
		goto out;
	}

	if (seqno == head) {
		tid->head = FUNC5(head);
		if (tid->nframes)
			FUNC10(tid, frames);
		goto out;
	}

	FUNC1(skb, frames);

	/*
	 * Frame sequence number exceeds buffering window, free up some space
	 * by releasing previous frames
	 */
	if (!FUNC6(seqno, head + size)) {
		head = FUNC5(FUNC7(seqno, size));
		FUNC9(tid, frames, head);
	}

	idx = seqno % size;

	/* Discard if the current slot is already in use */
	if (tid->reorder_buf[idx]) {
		FUNC2(skb);
		goto out;
	}

	status->reorder_time = jiffies;
	tid->reorder_buf[idx] = skb;
	tid->nframes++;
	FUNC10(tid, frames);

	FUNC4(tid->dev->hw, &tid->reorder_work,
				     REORDER_TIMEOUT);

out:
	FUNC13(&tid->lock);
}