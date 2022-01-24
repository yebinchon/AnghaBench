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
struct work_struct {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  work; } ;
struct cavium_wq {TYPE_1__ wk; int /*<<< orphan*/  wq; } ;
struct octeon_device {TYPE_2__* response_list; struct cavium_wq dma_comp_wq; } ;
struct cavium_wk {scalar_t__ ctxptr; } ;
struct TYPE_4__ {int /*<<< orphan*/  pending_req_count; } ;

/* Variables and functions */
 size_t OCTEON_ORDERED_SC_LIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	struct cavium_wk *wk = (struct cavium_wk *)work;
	struct octeon_device *oct = (struct octeon_device *)wk->ctxptr;
	struct cavium_wq *cwq = &oct->dma_comp_wq;

	FUNC1(oct, 0);

	if (FUNC0(&oct->response_list
			[OCTEON_ORDERED_SC_LIST].pending_req_count))
		FUNC3(cwq->wq, &cwq->wk.work, FUNC2(1));
}