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
struct sk_buff {int dummy; } ;
struct nicvf {scalar_t__ hw_tso; scalar_t__ t88; } ;
struct TYPE_2__ {scalar_t__ nr_frags; scalar_t__ gso_size; } ;

/* Variables and functions */
 int MIN_SQ_DESC_PER_PKT_XMIT ; 
 scalar_t__ POST_CQE_DESC_COUNT ; 
 int FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC2(struct nicvf *nic, struct sk_buff *skb)
{
	int subdesc_cnt = MIN_SQ_DESC_PER_PKT_XMIT;

	if (FUNC1(skb)->gso_size && !nic->hw_tso) {
		subdesc_cnt = FUNC0(skb);
		return subdesc_cnt;
	}

	/* Dummy descriptors to get TSO pkt completion notification */
	if (nic->t88 && nic->hw_tso && FUNC1(skb)->gso_size)
		subdesc_cnt += POST_CQE_DESC_COUNT;

	if (FUNC1(skb)->nr_frags)
		subdesc_cnt += FUNC1(skb)->nr_frags;

	return subdesc_cnt;
}