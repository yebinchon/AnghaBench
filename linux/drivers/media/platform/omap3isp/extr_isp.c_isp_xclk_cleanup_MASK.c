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
struct isp_xclk {int /*<<< orphan*/  clk; } ;
struct isp_device {struct isp_xclk* xclks; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct isp_xclk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

__attribute__((used)) static void FUNC4(struct isp_device *isp)
{
	struct device_node *np = isp->dev->of_node;
	unsigned int i;

	if (np)
		FUNC3(np);

	for (i = 0; i < FUNC0(isp->xclks); ++i) {
		struct isp_xclk *xclk = &isp->xclks[i];

		if (!FUNC1(xclk->clk))
			FUNC2(xclk->clk);
	}
}