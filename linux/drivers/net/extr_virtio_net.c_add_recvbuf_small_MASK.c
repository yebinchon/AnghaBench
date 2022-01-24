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
struct virtnet_info {unsigned int hdr_len; } ;
struct skb_shared_info {int dummy; } ;
struct page_frag {int offset; int /*<<< orphan*/  page; } ;
struct receive_queue {int /*<<< orphan*/  sg; int /*<<< orphan*/  vq; struct page_frag alloc_frag; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int GOOD_PACKET_LEN ; 
 int FUNC0 (int) ; 
 int VIRTNET_RX_PAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct page_frag*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 unsigned int FUNC8 (struct virtnet_info*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct virtnet_info *vi, struct receive_queue *rq,
			     gfp_t gfp)
{
	struct page_frag *alloc_frag = &rq->alloc_frag;
	char *buf;
	unsigned int xdp_headroom = FUNC8(vi);
	void *ctx = (void *)(unsigned long)xdp_headroom;
	int len = vi->hdr_len + VIRTNET_RX_PAD + GOOD_PACKET_LEN + xdp_headroom;
	int err;

	len = FUNC0(len) +
	      FUNC0(sizeof(struct skb_shared_info));
	if (FUNC6(!FUNC5(len, alloc_frag, gfp)))
		return -ENOMEM;

	buf = (char *)FUNC2(alloc_frag->page) + alloc_frag->offset;
	FUNC1(alloc_frag->page);
	alloc_frag->offset += len;
	FUNC4(rq->sg, buf + VIRTNET_RX_PAD + xdp_headroom,
		    vi->hdr_len + GOOD_PACKET_LEN);
	err = FUNC9(rq->vq, rq->sg, 1, buf, ctx, gfp);
	if (err < 0)
		FUNC3(FUNC7(buf));
	return err;
}