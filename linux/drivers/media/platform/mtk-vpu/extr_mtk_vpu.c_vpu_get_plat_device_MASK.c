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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct platform_device* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

struct platform_device *FUNC5(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *vpu_node;
	struct platform_device *vpu_pdev;

	vpu_node = FUNC4(dev->of_node, "mediatek,vpu", 0);
	if (!vpu_node) {
		FUNC1(dev, "can't get vpu node\n");
		return NULL;
	}

	vpu_pdev = FUNC2(vpu_node);
	FUNC3(vpu_node);
	if (FUNC0(!vpu_pdev)) {
		FUNC1(dev, "vpu pdev failed\n");
		return NULL;
	}

	return vpu_pdev;
}