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
struct TYPE_2__ {void* addr; int size; } ;
struct vpdma_desc_list {struct vpdma_ctd* next; TYPE_1__ buf; } ;
struct vpdma_ctd {int /*<<< orphan*/  type_source_ctl; scalar_t__ w2; scalar_t__ w1; scalar_t__ w0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTD_TYPE_ABORT_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vpdma_ctd*) ; 

void FUNC3(struct vpdma_desc_list *list,
		int chan_num)
{
	struct vpdma_ctd *ctd;

	ctd = list->next;
	FUNC0((void *)(ctd + 1) > (list->buf.addr + list->buf.size));

	ctd->w0 = 0;
	ctd->w1 = 0;
	ctd->w2 = 0;
	ctd->type_source_ctl = FUNC1(chan_num,
				CTD_TYPE_ABORT_CHANNEL);

	list->next = ctd + 1;

	FUNC2(ctd);
}