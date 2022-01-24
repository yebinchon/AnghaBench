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
struct platform_device {int dummy; } ;
struct ingenic_ecc {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCH_CLK_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct platform_device*) ; 
 struct ingenic_ecc* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct ingenic_ecc *bch;
	int ret;

	ret = FUNC1(pdev);
	if (ret)
		return ret;

	bch = FUNC2(pdev);
	FUNC0(bch->clk, BCH_CLK_RATE);

	return 0;
}