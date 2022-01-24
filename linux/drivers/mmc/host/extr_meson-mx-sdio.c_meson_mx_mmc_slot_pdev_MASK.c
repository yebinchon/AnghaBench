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
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct platform_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct platform_device* FUNC4 (struct device_node*,int /*<<< orphan*/ *,struct device*) ; 

__attribute__((used)) static struct platform_device *FUNC5(struct device *parent)
{
	struct device_node *slot_node;
	struct platform_device *pdev;

	/*
	 * TODO: the MMC core framework currently does not support
	 * controllers with multiple slots properly. So we only register
	 * the first slot for now
	 */
	slot_node = FUNC2(parent->of_node, "mmc-slot");
	if (!slot_node) {
		FUNC1(parent, "no 'mmc-slot' sub-node found\n");
		return FUNC0(-ENOENT);
	}

	pdev = FUNC4(slot_node, NULL, parent);
	FUNC3(slot_node);

	return pdev;
}