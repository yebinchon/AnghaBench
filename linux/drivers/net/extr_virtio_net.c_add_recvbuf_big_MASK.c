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
struct virtnet_info {scalar_t__ hdr_len; } ;
struct receive_queue {int /*<<< orphan*/ * sg; int /*<<< orphan*/  vq; } ;
struct page {unsigned long private; } ;
struct padded_vnet_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int MAX_SKB_FRAGS ; 
 scalar_t__ PAGE_SIZE ; 
 struct page* FUNC0 (struct receive_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct receive_queue*,struct page*) ; 
 char* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct virtnet_info *vi, struct receive_queue *rq,
			   gfp_t gfp)
{
	struct page *first, *list = NULL;
	char *p;
	int i, err, offset;

	FUNC3(rq->sg, MAX_SKB_FRAGS + 2);

	/* page in rq->sg[MAX_SKB_FRAGS + 1] is list tail */
	for (i = MAX_SKB_FRAGS + 1; i > 1; --i) {
		first = FUNC0(rq, gfp);
		if (!first) {
			if (list)
				FUNC1(rq, list);
			return -ENOMEM;
		}
		FUNC4(&rq->sg[i], FUNC2(first), PAGE_SIZE);

		/* chain new page in list head to match sg */
		first->private = (unsigned long)list;
		list = first;
	}

	first = FUNC0(rq, gfp);
	if (!first) {
		FUNC1(rq, list);
		return -ENOMEM;
	}
	p = FUNC2(first);

	/* rq->sg[0], rq->sg[1] share the same page */
	/* a separated rq->sg[0] for header - required in case !any_header_sg */
	FUNC4(&rq->sg[0], p, vi->hdr_len);

	/* rq->sg[1] for data packet, from offset */
	offset = sizeof(struct padded_vnet_hdr);
	FUNC4(&rq->sg[1], p + offset, PAGE_SIZE - offset);

	/* chain first in list head */
	first->private = (unsigned long)list;
	err = FUNC5(rq->vq, rq->sg, MAX_SKB_FRAGS + 2,
				  first, gfp);
	if (err < 0)
		FUNC1(rq, first);

	return err;
}