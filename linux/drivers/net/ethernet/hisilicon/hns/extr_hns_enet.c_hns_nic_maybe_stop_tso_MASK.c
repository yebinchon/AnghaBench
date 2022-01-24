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
struct sk_buff {int len; } ;
struct hnae_ring {int max_desc_num_per_pkt; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int BD_MAX_SEND_SIZE ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct hnae_ring*) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(
	struct sk_buff **out_skb, int *bnum, struct hnae_ring *ring)
{
	int i;
	int size;
	int buf_num;
	int frag_num;
	struct sk_buff *skb = *out_skb;
	struct sk_buff *new_skb = NULL;
	skb_frag_t *frag;

	size = FUNC4(skb);
	buf_num = (size + BD_MAX_SEND_SIZE - 1) / BD_MAX_SEND_SIZE;

	frag_num = FUNC5(skb)->nr_frags;
	for (i = 0; i < frag_num; i++) {
		frag = &FUNC5(skb)->frags[i];
		size = FUNC3(frag);
		buf_num += (size + BD_MAX_SEND_SIZE - 1) / BD_MAX_SEND_SIZE;
	}

	if (FUNC6(buf_num > ring->max_desc_num_per_pkt)) {
		buf_num = (skb->len + BD_MAX_SEND_SIZE - 1) / BD_MAX_SEND_SIZE;
		if (FUNC1(ring) < buf_num)
			return -EBUSY;
		/* manual split the send packet */
		new_skb = FUNC2(skb, GFP_ATOMIC);
		if (!new_skb)
			return -ENOMEM;
		FUNC0(skb);
		*out_skb = new_skb;

	} else if (FUNC1(ring) < buf_num) {
		return -EBUSY;
	}

	*bnum = buf_num;
	return 0;
}