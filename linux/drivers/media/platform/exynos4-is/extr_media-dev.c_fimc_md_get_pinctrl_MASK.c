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
struct fimc_pinctrl {void* pinctrl; void* state_idle; void* state_default; } ;
struct fimc_md {struct fimc_pinctrl pinctl; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  PINCTRL_STATE_DEFAULT ; 
 int /*<<< orphan*/  PINCTRL_STATE_IDLE ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (struct device*) ; 
 void* FUNC3 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct fimc_md *fmd)
{
	struct device *dev = &fmd->pdev->dev;
	struct fimc_pinctrl *pctl = &fmd->pinctl;

	pctl->pinctrl = FUNC2(dev);
	if (FUNC0(pctl->pinctrl))
		return FUNC1(pctl->pinctrl);

	pctl->state_default = FUNC3(pctl->pinctrl,
					PINCTRL_STATE_DEFAULT);
	if (FUNC0(pctl->state_default))
		return FUNC1(pctl->state_default);

	pctl->state_idle = FUNC3(pctl->pinctrl,
					PINCTRL_STATE_IDLE);
	return 0;
}