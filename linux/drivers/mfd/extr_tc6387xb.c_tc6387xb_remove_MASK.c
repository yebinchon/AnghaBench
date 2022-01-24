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
struct tc6387xb {int /*<<< orphan*/  clk32k; int /*<<< orphan*/  rscr; int /*<<< orphan*/  scr; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tc6387xb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tc6387xb* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *dev)
{
	struct tc6387xb *tc6387xb = FUNC5(dev);

	FUNC4(&dev->dev);
	FUNC2(tc6387xb->scr);
	FUNC6(&tc6387xb->rscr);
	FUNC0(tc6387xb->clk32k);
	FUNC1(tc6387xb->clk32k);
	FUNC3(tc6387xb);

	return 0;
}