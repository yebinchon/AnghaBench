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
struct receive_queue {struct page* pages; } ;
struct page {scalar_t__ private; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct page *FUNC1(struct receive_queue *rq, gfp_t gfp_mask)
{
	struct page *p = rq->pages;

	if (p) {
		rq->pages = (struct page *)p->private;
		/* clear private here, it is used to chain pages */
		p->private = 0;
	} else
		p = FUNC0(gfp_mask);
	return p;
}