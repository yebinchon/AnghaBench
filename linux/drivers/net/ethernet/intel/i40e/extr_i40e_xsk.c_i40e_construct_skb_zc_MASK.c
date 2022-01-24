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
struct xdp_buff {unsigned int data; unsigned int data_meta; unsigned int data_end; unsigned int data_hard_start; } ;
struct sk_buff {int dummy; } ;
struct i40e_rx_buffer {int dummy; } ;
struct i40e_ring {TYPE_1__* q_vector; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int __GFP_NOWARN ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_ring*,struct i40e_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct i40e_ring *rx_ring,
					     struct i40e_rx_buffer *bi,
					     struct xdp_buff *xdp)
{
	unsigned int metasize = xdp->data - xdp->data_meta;
	unsigned int datasize = xdp->data_end - xdp->data;
	struct sk_buff *skb;

	/* allocate a skb to store the frags */
	skb = FUNC0(&rx_ring->q_vector->napi,
			       xdp->data_end - xdp->data_hard_start,
			       GFP_ATOMIC | __GFP_NOWARN);
	if (FUNC6(!skb))
		return NULL;

	FUNC5(skb, xdp->data - xdp->data_hard_start);
	FUNC3(FUNC1(skb, datasize), xdp->data, datasize);
	if (metasize)
		FUNC4(skb, metasize);

	FUNC2(rx_ring, bi);
	return skb;
}