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
struct TYPE_2__ {int addr; scalar_t__ dma_addr; } ;
struct vpdma_desc_list {int next; int type; TYPE_1__ buf; } ;
struct vpdma_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  VPDMA_LIST_ADDR ; 
 int /*<<< orphan*/  VPDMA_LIST_ATTR ; 
 int VPDMA_LIST_NUM_SHFT ; 
 int VPDMA_LIST_TYPE_SHFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (struct vpdma_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vpdma_data*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct vpdma_data *vpdma,
			struct vpdma_desc_list *list, int list_num)
{
	int list_size;
	unsigned long flags;

	if (FUNC2(vpdma, list_num))
		return -EBUSY;

	/* 16-byte granularity */
	list_size = (list->next - list->buf.addr) >> 4;

	FUNC0(&vpdma->lock, flags);
	FUNC3(vpdma, VPDMA_LIST_ADDR, (u32) list->buf.dma_addr);

	FUNC3(vpdma, VPDMA_LIST_ATTR,
			(list_num << VPDMA_LIST_NUM_SHFT) |
			(list->type << VPDMA_LIST_TYPE_SHFT) |
			list_size);
	FUNC1(&vpdma->lock, flags);

	return 0;
}