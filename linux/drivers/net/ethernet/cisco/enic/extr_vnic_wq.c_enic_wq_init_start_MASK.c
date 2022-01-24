#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_3__ {unsigned int desc_count; scalar_t__ base_addr; } ;
struct vnic_wq {int /*<<< orphan*/ ** bufs; int /*<<< orphan*/ * to_clean; int /*<<< orphan*/ * to_use; TYPE_2__* ctrl; TYPE_1__ ring; } ;
struct TYPE_4__ {int /*<<< orphan*/  error_status; int /*<<< orphan*/  error_interrupt_offset; int /*<<< orphan*/  error_interrupt_enable; int /*<<< orphan*/  cq_index; int /*<<< orphan*/  posted_index; int /*<<< orphan*/  fetch_index; int /*<<< orphan*/  ring_size; int /*<<< orphan*/  ring_base; } ;

/* Variables and functions */
 int VNIC_PADDR_TARGET ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

void FUNC3(struct vnic_wq *wq, unsigned int cq_index,
			unsigned int fetch_index, unsigned int posted_index,
			unsigned int error_interrupt_enable,
			unsigned int error_interrupt_offset)
{
	u64 paddr;
	unsigned int count = wq->ring.desc_count;

	paddr = (u64)wq->ring.base_addr | VNIC_PADDR_TARGET;
	FUNC2(paddr, &wq->ctrl->ring_base);
	FUNC1(count, &wq->ctrl->ring_size);
	FUNC1(fetch_index, &wq->ctrl->fetch_index);
	FUNC1(posted_index, &wq->ctrl->posted_index);
	FUNC1(cq_index, &wq->ctrl->cq_index);
	FUNC1(error_interrupt_enable, &wq->ctrl->error_interrupt_enable);
	FUNC1(error_interrupt_offset, &wq->ctrl->error_interrupt_offset);
	FUNC1(0, &wq->ctrl->error_status);

	wq->to_use = wq->to_clean =
		&wq->bufs[fetch_index / FUNC0(count)]
			[fetch_index % FUNC0(count)];
}