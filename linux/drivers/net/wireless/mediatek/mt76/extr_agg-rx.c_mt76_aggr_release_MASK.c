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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mt76_rx_tid {int /*<<< orphan*/  nframes; struct sk_buff** reorder_buf; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct mt76_rx_tid *tid, struct sk_buff_head *frames, int idx)
{
	struct sk_buff *skb;

	tid->head = FUNC1(tid->head);

	skb = tid->reorder_buf[idx];
	if (!skb)
		return;

	tid->reorder_buf[idx] = NULL;
	tid->nframes--;
	FUNC0(frames, skb);
}