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
struct wil_tid_ampdu_rx {int /*<<< orphan*/  head_seq_num; struct sk_buff** reorder_buf; int /*<<< orphan*/  stored_mpdu_num; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *ndev,
				      struct wil_tid_ampdu_rx *r,
				      int index)
{
	struct sk_buff *skb = r->reorder_buf[index];

	if (!skb)
		goto no_frame;

	/* release the frame from the reorder ring buffer */
	r->stored_mpdu_num--;
	r->reorder_buf[index] = NULL;
	FUNC1(skb, ndev);

no_frame:
	r->head_seq_num = FUNC0(r->head_seq_num);
}