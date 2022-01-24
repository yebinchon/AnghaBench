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
typedef  int /*<<< orphan*/  u32 ;
struct device_node {int dummy; } ;
struct denali_controller {int /*<<< orphan*/  dev; } ;
struct denali_chip {int nsels; int /*<<< orphan*/  chip; TYPE_1__* sels; } ;
struct TYPE_2__ {int /*<<< orphan*/  bank; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct denali_controller*,struct denali_chip*) ; 
 struct denali_chip* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct device_node*) ; 
 int FUNC3 (struct device_node*,char*) ; 
 int FUNC4 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sels ; 
 int /*<<< orphan*/  FUNC5 (struct denali_chip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct denali_controller *denali,
			       struct device_node *chip_np)
{
	struct denali_chip *dchip;
	u32 bank;
	int nsels, i, ret;

	nsels = FUNC3(chip_np, "reg");
	if (nsels < 0)
		return nsels;

	dchip = FUNC1(denali->dev, FUNC5(dchip, sels, nsels),
			     GFP_KERNEL);
	if (!dchip)
		return -ENOMEM;

	dchip->nsels = nsels;

	for (i = 0; i < nsels; i++) {
		ret = FUNC4(chip_np, "reg", i, &bank);
		if (ret)
			return ret;

		dchip->sels[i].bank = bank;

		FUNC2(&dchip->chip, chip_np);
	}

	return FUNC0(denali, dchip);
}