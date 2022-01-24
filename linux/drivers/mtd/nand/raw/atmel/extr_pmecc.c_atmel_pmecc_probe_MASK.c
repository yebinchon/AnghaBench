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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct atmel_pmecc_caps {int dummy; } ;
struct atmel_pmecc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct atmel_pmecc*) ; 
 int FUNC1 (struct atmel_pmecc*) ; 
 struct atmel_pmecc* FUNC2 (struct platform_device*,struct atmel_pmecc_caps const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct atmel_pmecc_caps* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct atmel_pmecc*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct atmel_pmecc_caps *caps;
	struct atmel_pmecc *pmecc;

	caps = FUNC4(&pdev->dev);
	if (!caps) {
		FUNC3(dev, "Invalid caps\n");
		return -EINVAL;
	}

	pmecc = FUNC2(pdev, caps, 0, 1);
	if (FUNC0(pmecc))
		return FUNC1(pmecc);

	FUNC5(pdev, pmecc);

	return 0;
}