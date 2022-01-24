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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct hns3_enet_ring {size_t next_to_clean; struct hns3_desc* desc; } ;
struct hns3_desc_cb {scalar_t__ page_offset; int reuse_flag; int /*<<< orphan*/  priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct hns3_desc {TYPE_1__ rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hns3_enet_ring*) ; 
 scalar_t__ FUNC2 (struct hns3_enet_ring*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct sk_buff *skb, int i,
				struct hns3_enet_ring *ring, int pull_len,
				struct hns3_desc_cb *desc_cb)
{
	struct hns3_desc *desc = &ring->desc[ring->next_to_clean];
	int size = FUNC3(desc->rx.size);
	u32 truesize = FUNC1(ring);

	FUNC7(skb, i, desc_cb->priv, desc_cb->page_offset + pull_len,
			size - pull_len, truesize);

	/* Avoid re-using remote pages, or the stack is still using the page
	 * when page_offset rollback to zero, flag default unreuse
	 */
	if (FUNC8(FUNC6(desc_cb->priv) != FUNC4()) ||
	    (!desc_cb->page_offset && FUNC5(desc_cb->priv) > 1))
		return;

	/* Move offset up to the next cache line */
	desc_cb->page_offset += truesize;

	if (desc_cb->page_offset + truesize <= FUNC2(ring)) {
		desc_cb->reuse_flag = 1;
		/* Bump ref count on page before it is given */
		FUNC0(desc_cb->priv);
	} else if (FUNC5(desc_cb->priv) == 1) {
		desc_cb->reuse_flag = 1;
		desc_cb->page_offset = 0;
		FUNC0(desc_cb->priv);
	}
}