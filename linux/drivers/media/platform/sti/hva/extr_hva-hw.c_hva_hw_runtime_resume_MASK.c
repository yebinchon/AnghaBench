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
struct hva_dev {int /*<<< orphan*/  clk; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_RATE ; 
 int EINVAL ; 
 int /*<<< orphan*/  HVA_PREFIX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct hva_dev* FUNC3 (struct device*) ; 

int FUNC4(struct device *dev)
{
	struct hva_dev *hva = FUNC3(dev);

	if (FUNC0(hva->clk)) {
		FUNC2(hva->dev, "%s     failed to prepare hva clk\n",
			HVA_PREFIX);
		return -EINVAL;
	}

	if (FUNC1(hva->clk, CLK_RATE)) {
		FUNC2(dev, "%s     failed to set clock frequency\n",
			HVA_PREFIX);
		return -EINVAL;
	}

	return 0;
}