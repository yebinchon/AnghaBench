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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct atmel_pmecc {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 struct atmel_pmecc* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_atmel_pmecc_put ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct atmel_pmecc**) ; 
 struct atmel_pmecc** FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC3 (struct device_node*) ; 
 struct atmel_pmecc* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct atmel_pmecc *FUNC6(struct device *userdev,
						   struct device_node *np)
{
	struct platform_device *pdev;
	struct atmel_pmecc *pmecc, **ptr;
	int ret;

	pdev = FUNC3(np);
	if (!pdev)
		return FUNC0(-EPROBE_DEFER);
	pmecc = FUNC4(pdev);
	if (!pmecc) {
		ret = -EPROBE_DEFER;
		goto err_put_device;
	}

	ptr = FUNC2(devm_atmel_pmecc_put, sizeof(*ptr), GFP_KERNEL);
	if (!ptr) {
		ret = -ENOMEM;
		goto err_put_device;
	}

	*ptr = pmecc;

	FUNC1(userdev, ptr);

	return pmecc;

err_put_device:
	FUNC5(&pdev->dev);
	return FUNC0(ret);
}