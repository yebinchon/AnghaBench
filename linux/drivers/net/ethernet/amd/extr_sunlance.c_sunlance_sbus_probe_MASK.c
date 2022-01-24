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
struct TYPE_2__ {struct device_node* of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device_node*,char*) ; 
 int FUNC1 (struct platform_device*,struct platform_device*,struct platform_device*) ; 
 struct platform_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *op)
{
	struct platform_device *parent = FUNC2(op->dev.parent);
	struct device_node *parent_dp = parent->dev.of_node;
	int err;

	if (FUNC0(parent_dp, "ledma")) {
		err = FUNC1(op, parent, NULL);
	} else if (FUNC0(parent_dp, "lebuffer")) {
		err = FUNC1(op, NULL, parent);
	} else
		err = FUNC1(op, NULL, NULL);

	return err;
}