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
struct urb {unsigned int num_sgs; unsigned int transfer_buffer_length; int /*<<< orphan*/ * sg; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct scatterlist {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/ * FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct sk_buff const*) ; 
 TYPE_1__* FUNC8 (struct sk_buff const*) ; 

__attribute__((used)) static int FUNC9(const struct sk_buff *skb, struct urb *urb)
{
	unsigned num_sgs, total_len = 0;
	int i, s = 0;

	num_sgs = FUNC8(skb)->nr_frags + 1;
	if (num_sgs == 1)
		return 0;

	/* reserve one for zero packet */
	urb->sg = FUNC0(num_sgs + 1, sizeof(struct scatterlist),
				GFP_ATOMIC);
	if (!urb->sg)
		return -ENOMEM;

	urb->num_sgs = num_sgs;
	FUNC1(urb->sg, urb->num_sgs + 1);

	FUNC2(&urb->sg[s++], skb->data, FUNC7(skb));
	total_len += FUNC7(skb);

	for (i = 0; i < FUNC8(skb)->nr_frags; i++) {
		skb_frag_t *f = &FUNC8(skb)->frags[i];

		total_len += FUNC6(f);
		FUNC3(&urb->sg[i + s], FUNC5(f), FUNC6(f),
			    FUNC4(f));
	}
	urb->transfer_buffer_length = total_len;

	return 1;
}