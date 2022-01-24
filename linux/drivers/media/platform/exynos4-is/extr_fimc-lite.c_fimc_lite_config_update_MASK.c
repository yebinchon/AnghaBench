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
struct fimc_lite {int /*<<< orphan*/  state; TYPE_1__* test_pattern; int /*<<< orphan*/  out_frame; int /*<<< orphan*/  inp_frame; } ;
struct TYPE_2__ {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_FLITE_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_lite*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_lite*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_lite*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fimc_lite *fimc)
{
	FUNC3(fimc, &fimc->inp_frame);
	FUNC1(fimc, &fimc->out_frame);
	FUNC2(fimc, fimc->test_pattern->val);
	FUNC0(ST_FLITE_CONFIG, &fimc->state);
}