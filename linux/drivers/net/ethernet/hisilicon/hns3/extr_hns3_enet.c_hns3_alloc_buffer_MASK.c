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
struct page {int dummy; } ;
struct hns3_enet_ring {int dummy; } ;
struct hns3_desc_cb {int /*<<< orphan*/  type; int /*<<< orphan*/  length; int /*<<< orphan*/  buf; scalar_t__ reuse_flag; scalar_t__ page_offset; struct page* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_TYPE_PAGE ; 
 int ENOMEM ; 
 struct page* FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct hns3_enet_ring *ring,
			     struct hns3_desc_cb *cb)
{
	unsigned int order = FUNC1(ring);
	struct page *p;

	p = FUNC0(order);
	if (!p)
		return -ENOMEM;

	cb->priv = p;
	cb->page_offset = 0;
	cb->reuse_flag = 0;
	cb->buf  = FUNC3(p);
	cb->length = FUNC2(ring);
	cb->type = DESC_TYPE_PAGE;

	return 0;
}