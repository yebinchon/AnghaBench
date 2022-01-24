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
struct scif_endpt_rma_info {int /*<<< orphan*/  markwq; int /*<<< orphan*/  vma_list; int /*<<< orphan*/  mmn_list; int /*<<< orphan*/ * dma_chan; scalar_t__ async_list_del; int /*<<< orphan*/  fence_refcount; int /*<<< orphan*/  tcw_total_pages; int /*<<< orphan*/  tcw_refcount; int /*<<< orphan*/  tw_refcount; int /*<<< orphan*/  remote_reg_list; int /*<<< orphan*/  reg_list; int /*<<< orphan*/  mmn_lock; int /*<<< orphan*/  tc_lock; int /*<<< orphan*/  iovad; int /*<<< orphan*/  rma_lock; } ;
struct scif_endpt {struct scif_endpt_rma_info rma_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SCIF_IOVA_START_PFN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct scif_endpt *ep)
{
	struct scif_endpt_rma_info *rma = &ep->rma_info;

	FUNC4(&rma->rma_lock);
	FUNC2(&rma->iovad, PAGE_SIZE, SCIF_IOVA_START_PFN);
	FUNC5(&rma->tc_lock);
	FUNC4(&rma->mmn_lock);
	FUNC0(&rma->reg_list);
	FUNC0(&rma->remote_reg_list);
	FUNC1(&rma->tw_refcount, 0);
	FUNC1(&rma->tcw_refcount, 0);
	FUNC1(&rma->tcw_total_pages, 0);
	FUNC1(&rma->fence_refcount, 0);

	rma->async_list_del = 0;
	rma->dma_chan = NULL;
	FUNC0(&rma->mmn_list);
	FUNC0(&rma->vma_list);
	FUNC3(&rma->markwq);
}