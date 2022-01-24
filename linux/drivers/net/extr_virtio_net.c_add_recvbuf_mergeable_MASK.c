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
struct virtnet_info {int dummy; } ;
struct skb_shared_info {int dummy; } ;
struct page_frag {int offset; unsigned int size; int /*<<< orphan*/  page; } ;
struct receive_queue {int /*<<< orphan*/  sg; int /*<<< orphan*/  vq; int /*<<< orphan*/  mrg_avg_pkt_len; struct page_frag alloc_frag; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct receive_queue*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,struct page_frag*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 unsigned int FUNC10 (struct virtnet_info*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct virtnet_info *vi,
				 struct receive_queue *rq, gfp_t gfp)
{
	struct page_frag *alloc_frag = &rq->alloc_frag;
	unsigned int headroom = FUNC10(vi);
	unsigned int tailroom = headroom ? sizeof(struct skb_shared_info) : 0;
	unsigned int room = FUNC0(headroom + tailroom);
	char *buf;
	void *ctx;
	int err;
	unsigned int len, hole;

	/* Extra tailroom is needed to satisfy XDP's assumption. This
	 * means rx frags coalescing won't work, but consider we've
	 * disabled GSO for XDP, it won't be a big issue.
	 */
	len = FUNC1(rq, &rq->mrg_avg_pkt_len, room);
	if (FUNC8(!FUNC7(len + room, alloc_frag, gfp)))
		return -ENOMEM;

	buf = (char *)FUNC4(alloc_frag->page) + alloc_frag->offset;
	buf += headroom; /* advance address leaving hole at front of pkt */
	FUNC2(alloc_frag->page);
	alloc_frag->offset += len + room;
	hole = alloc_frag->size - alloc_frag->offset;
	if (hole < len + room) {
		/* To avoid internal fragmentation, if there is very likely not
		 * enough space for another buffer, add the remaining space to
		 * the current buffer.
		 */
		len += hole;
		alloc_frag->offset += hole;
	}

	FUNC6(rq->sg, buf, len);
	ctx = FUNC3(len, headroom);
	err = FUNC11(rq->vq, rq->sg, 1, buf, ctx, gfp);
	if (err < 0)
		FUNC5(FUNC9(buf));

	return err;
}