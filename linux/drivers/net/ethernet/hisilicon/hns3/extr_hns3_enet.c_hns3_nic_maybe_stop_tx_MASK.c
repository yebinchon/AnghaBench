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
struct TYPE_2__ {int /*<<< orphan*/  tx_copy; } ;
struct hns3_enet_ring {int /*<<< orphan*/  syncp; TYPE_1__ stats; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned int HNS3_MAX_BD_NUM_NORMAL ; 
 unsigned int HNS3_MAX_BD_NUM_TSO ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 unsigned int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 unsigned int FUNC3 (struct hns3_enet_ring*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct hns3_enet_ring *ring,
				  struct sk_buff **out_skb)
{
	struct sk_buff *skb = *out_skb;
	unsigned int bd_num;

	bd_num = FUNC1(skb);
	if (FUNC8(bd_num > HNS3_MAX_BD_NUM_NORMAL)) {
		struct sk_buff *new_skb;

		if (FUNC5(skb) && bd_num <= HNS3_MAX_BD_NUM_TSO &&
		    !FUNC2(skb))
			goto out;

		/* manual split the send packet */
		new_skb = FUNC4(skb, GFP_ATOMIC);
		if (!new_skb)
			return -ENOMEM;
		FUNC0(skb);
		*out_skb = new_skb;

		bd_num = FUNC1(new_skb);
		if ((FUNC5(new_skb) && bd_num > HNS3_MAX_BD_NUM_TSO) ||
		    (!FUNC5(new_skb) && bd_num > HNS3_MAX_BD_NUM_NORMAL))
			return -ENOMEM;

		FUNC6(&ring->syncp);
		ring->stats.tx_copy++;
		FUNC7(&ring->syncp);
	}

out:
	if (FUNC8(FUNC3(ring) < bd_num))
		return -EBUSY;

	return bd_num;
}