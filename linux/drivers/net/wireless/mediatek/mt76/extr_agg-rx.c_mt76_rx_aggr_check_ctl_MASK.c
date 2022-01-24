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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; scalar_t__ cb; } ;
struct mt76_wcid {int /*<<< orphan*/ * aggr; } ;
struct mt76_rx_tid {int /*<<< orphan*/  lock; } ;
struct mt76_rx_status {int tid; struct mt76_wcid* wcid; } ;
struct ieee80211_bar {int /*<<< orphan*/  start_seq_num; int /*<<< orphan*/  control; int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76_rx_tid*,struct sk_buff_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76_rx_tid*,struct sk_buff_head*) ; 
 struct mt76_rx_tid* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct sk_buff *skb, struct sk_buff_head *frames)
{
	struct mt76_rx_status *status = (struct mt76_rx_status *)skb->cb;
	struct ieee80211_bar *bar = (struct ieee80211_bar *)skb->data;
	struct mt76_wcid *wcid = status->wcid;
	struct mt76_rx_tid *tid;
	u16 seqno;

	if (!FUNC2(bar->frame_control))
		return;

	if (!FUNC1(bar->frame_control))
		return;

	status->tid = FUNC3(bar->control) >> 12;
	seqno = FUNC0(FUNC3(bar->start_seq_num));
	tid = FUNC6(wcid->aggr[status->tid]);
	if (!tid)
		return;

	FUNC7(&tid->lock);
	FUNC4(tid, frames, seqno);
	FUNC5(tid, frames);
	FUNC8(&tid->lock);
}