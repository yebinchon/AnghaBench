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
struct t7l66xb_platform_data {int (* disable ) (struct platform_device*) ;} ;
struct t7l66xb {int /*<<< orphan*/  rscr; int /*<<< orphan*/  scr; int /*<<< orphan*/  clk32k; int /*<<< orphan*/  clk48m; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct t7l66xb_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct t7l66xb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct t7l66xb* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *dev)
{
	struct t7l66xb_platform_data *pdata = FUNC2(&dev->dev);
	struct t7l66xb *t7l66xb = FUNC6(dev);
	int ret;

	ret = pdata->disable(dev);
	FUNC0(t7l66xb->clk48m);
	FUNC1(t7l66xb->clk48m);
	FUNC0(t7l66xb->clk32k);
	FUNC1(t7l66xb->clk32k);
	FUNC9(dev);
	FUNC3(t7l66xb->scr);
	FUNC7(&t7l66xb->rscr);
	FUNC5(&dev->dev);
	FUNC4(t7l66xb);

	return ret;

}