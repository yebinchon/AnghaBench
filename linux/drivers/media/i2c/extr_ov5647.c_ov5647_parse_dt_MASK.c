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
struct v4l2_fwnode_endpoint {int /*<<< orphan*/  bus_type; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct v4l2_fwnode_endpoint*) ; 

__attribute__((used)) static int FUNC4(struct device_node *np)
{
	struct v4l2_fwnode_endpoint bus_cfg = { .bus_type = 0 };
	struct device_node *ep;

	int ret;

	ep = FUNC1(np, NULL);
	if (!ep)
		return -EINVAL;

	ret = FUNC3(FUNC0(ep), &bus_cfg);

	FUNC2(ep);
	return ret;
}