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
typedef  scalar_t__ u16 ;
struct skb_shared_info {int dummy; } ;
struct receive_queue {int /*<<< orphan*/  vq; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PAGE_SIZE ; 
 int FUNC0 (int) ; 
 int VIRTIO_XDP_HEADROOM ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,unsigned int) ; 
 void* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (int) ; 
 struct page* FUNC7 (void*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static struct page *FUNC9(struct receive_queue *rq,
				       u16 *num_buf,
				       struct page *p,
				       int offset,
				       int page_off,
				       unsigned int *len)
{
	struct page *page = FUNC2(GFP_ATOMIC);

	if (!page)
		return NULL;

	FUNC3(FUNC4(page) + page_off, FUNC4(p) + offset, *len);
	page_off += *len;

	while (--*num_buf) {
		int tailroom = FUNC0(sizeof(struct skb_shared_info));
		unsigned int buflen;
		void *buf;
		int off;

		buf = FUNC8(rq->vq, &buflen);
		if (FUNC6(!buf))
			goto err_buf;

		p = FUNC7(buf);
		off = buf - FUNC4(p);

		/* guard against a misconfigured or uncooperative backend that
		 * is sending packet larger than the MTU.
		 */
		if ((page_off + buflen + tailroom) > PAGE_SIZE) {
			FUNC5(p);
			goto err_buf;
		}

		FUNC3(FUNC4(page) + page_off,
		       FUNC4(p) + off, buflen);
		page_off += buflen;
		FUNC5(p);
	}

	/* Headroom does not contribute to packet length */
	*len = page_off - VIRTIO_XDP_HEADROOM;
	return page;
err_buf:
	FUNC1(page, 0);
	return NULL;
}