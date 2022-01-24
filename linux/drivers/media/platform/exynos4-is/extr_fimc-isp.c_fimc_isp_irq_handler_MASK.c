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
struct TYPE_2__ {void** args; } ;
struct fimc_is {int /*<<< orphan*/  irq_queue; TYPE_1__ i2h_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIMC_IS_INT_FRAME_DONE_ISP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_is*) ; 
 void* FUNC3 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct fimc_is *is)
{
	is->i2h_cmd.args[0] = FUNC3(is, FUNC0(20));
	is->i2h_cmd.args[1] = FUNC3(is, FUNC0(21));

	FUNC1(is, FIMC_IS_INT_FRAME_DONE_ISP);
	FUNC2(is);

	FUNC4(&is->irq_queue);
}