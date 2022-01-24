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
struct sk_buff {unsigned int len; unsigned int data_len; int /*<<< orphan*/  truesize; } ;
struct pkt_gl {unsigned int tot_len; int /*<<< orphan*/  va; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned int RX_COPY_THRES ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,unsigned int) ; 
 struct sk_buff* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct pkt_gl const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC5(const struct pkt_gl *gl,
					 unsigned int skb_len,
					 unsigned int pull_len)
{
	struct sk_buff *skb;

	/*
	 * If the ingress packet is small enough, allocate an skb large enough
	 * for all of the data and copy it inline.  Otherwise, allocate an skb
	 * with enough room to pull in the header and reference the rest of
	 * the data via the skb fragment list.
	 *
	 * Below we rely on RX_COPY_THRES being less than the smallest Rx
	 * buff!  size, which is expected since buffers are at least
	 * PAGE_SIZEd.  In this case packets up to RX_COPY_THRES have only one
	 * fragment.
	 */
	if (gl->tot_len <= RX_COPY_THRES) {
		/* small packets have only one fragment */
		skb = FUNC1(gl->tot_len, GFP_ATOMIC);
		if (FUNC4(!skb))
			goto out;
		FUNC0(skb, gl->tot_len);
		FUNC3(skb, gl->va, gl->tot_len);
	} else {
		skb = FUNC1(skb_len, GFP_ATOMIC);
		if (FUNC4(!skb))
			goto out;
		FUNC0(skb, pull_len);
		FUNC3(skb, gl->va, pull_len);

		FUNC2(skb, gl, pull_len);
		skb->len = gl->tot_len;
		skb->data_len = skb->len - pull_len;
		skb->truesize += skb->data_len;
	}

out:
	return skb;
}