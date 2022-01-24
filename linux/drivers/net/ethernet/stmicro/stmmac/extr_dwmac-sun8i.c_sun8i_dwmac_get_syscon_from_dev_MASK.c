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
struct regmap {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct regmap* FUNC0 (int /*<<< orphan*/ ) ; 
 struct regmap* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 

__attribute__((used)) static struct regmap *FUNC6(struct device_node *node)
{
	struct device_node *syscon_node;
	struct platform_device *syscon_pdev;
	struct regmap *regmap = NULL;

	syscon_node = FUNC4(node, "syscon", 0);
	if (!syscon_node)
		return FUNC0(-ENODEV);

	syscon_pdev = FUNC2(syscon_node);
	if (!syscon_pdev) {
		/* platform device might not be probed yet */
		regmap = FUNC0(-EPROBE_DEFER);
		goto out_put_node;
	}

	/* If no regmap is found then the other device driver is at fault */
	regmap = FUNC1(&syscon_pdev->dev, NULL);
	if (!regmap)
		regmap = FUNC0(-EINVAL);

	FUNC5(syscon_pdev);
out_put_node:
	FUNC3(syscon_node);
	return regmap;
}