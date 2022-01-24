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
struct vb2_queue {struct fimc_lite* drv_priv; } ;
struct fimc_lite {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_lite*,int) ; 

__attribute__((used)) static void FUNC2(struct vb2_queue *q)
{
	struct fimc_lite *fimc = q->drv_priv;

	if (!FUNC0(fimc))
		return;

	FUNC1(fimc, false);
}