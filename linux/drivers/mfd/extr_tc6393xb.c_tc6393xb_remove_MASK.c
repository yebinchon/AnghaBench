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
struct tc6393xb_platform_data {int (* disable ) (struct platform_device*) ;int /*<<< orphan*/  (* teardown ) (struct platform_device*) ;} ;
struct TYPE_2__ {int base; } ;
struct tc6393xb {int /*<<< orphan*/  clk; int /*<<< orphan*/  rscr; int /*<<< orphan*/  scr; TYPE_1__ gpio; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tc6393xb_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tc6393xb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct tc6393xb* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*) ; 
 int FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *dev)
{
	struct tc6393xb_platform_data *tcpd = FUNC2(&dev->dev);
	struct tc6393xb *tc6393xb = FUNC7(dev);
	int ret;

	FUNC6(&dev->dev);

	if (tcpd->teardown)
		tcpd->teardown(dev);

	FUNC11(dev);

	if (tc6393xb->gpio.base != -1)
		FUNC3(&tc6393xb->gpio);

	ret = tcpd->disable(dev);
	FUNC0(tc6393xb->clk);
	FUNC4(tc6393xb->scr);
	FUNC8(&tc6393xb->rscr);
	FUNC1(tc6393xb->clk);
	FUNC5(tc6393xb);

	return ret;
}