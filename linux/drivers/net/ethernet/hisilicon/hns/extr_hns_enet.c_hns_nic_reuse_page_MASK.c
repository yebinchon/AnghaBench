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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct hnae_ring {size_t next_to_clean; struct hnae_desc* desc; } ;
struct hnae_desc_cb {int page_offset; int reuse_flag; int /*<<< orphan*/  priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct hnae_desc {TYPE_1__ rx; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ HNS_BUFFER_SIZE_2048 ; 
 int /*<<< orphan*/  L1_CACHE_BYTES ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hnae_ring*) ; 
 scalar_t__ FUNC3 (struct hnae_ring*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct sk_buff *skb, int i,
			       struct hnae_ring *ring, int pull_len,
			       struct hnae_desc_cb *desc_cb)
{
	struct hnae_desc *desc;
	u32 truesize;
	int size;
	int last_offset;
	bool twobufs;

	twobufs = ((PAGE_SIZE < 8192) &&
		FUNC2(ring) == HNS_BUFFER_SIZE_2048);

	desc = &ring->desc[ring->next_to_clean];
	size = FUNC4(desc->rx.size);

	if (twobufs) {
		truesize = FUNC2(ring);
	} else {
		truesize = FUNC0(size, L1_CACHE_BYTES);
		last_offset = FUNC3(ring) - FUNC2(ring);
	}

	FUNC9(skb, i, desc_cb->priv, desc_cb->page_offset + pull_len,
			size - pull_len, truesize);

	 /* avoid re-using remote pages,flag default unreuse */
	if (FUNC10(FUNC8(desc_cb->priv) != FUNC6()))
		return;

	if (twobufs) {
		/* if we are only owner of page we can reuse it */
		if (FUNC5(FUNC7(desc_cb->priv) == 1)) {
			/* flip page offset to other buffer */
			desc_cb->page_offset ^= truesize;

			desc_cb->reuse_flag = 1;
			/* bump ref count on page before it is given*/
			FUNC1(desc_cb->priv);
		}
		return;
	}

	/* move offset up to the next cache line */
	desc_cb->page_offset += truesize;

	if (desc_cb->page_offset <= last_offset) {
		desc_cb->reuse_flag = 1;
		/* bump ref count on page before it is given*/
		FUNC1(desc_cb->priv);
	}
}