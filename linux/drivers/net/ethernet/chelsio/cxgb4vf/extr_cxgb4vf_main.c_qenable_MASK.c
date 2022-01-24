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
struct sge_rspq {int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  intr_params; int /*<<< orphan*/  adapter; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SGE_VF_GTS ; 
 scalar_t__ T4VF_SGE_BASE_ADDR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void FUNC5(struct sge_rspq *rspq)
{
	FUNC3(&rspq->napi);

	/*
	 * 0-increment the Going To Sleep register to start the timer and
	 * enable interrupts.
	 */
	FUNC4(rspq->adapter, T4VF_SGE_BASE_ADDR + SGE_VF_GTS,
		     FUNC0(0) |
		     FUNC2(rspq->intr_params) |
		     FUNC1(rspq->cntxt_id));
}