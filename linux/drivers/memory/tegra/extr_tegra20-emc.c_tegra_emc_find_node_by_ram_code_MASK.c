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
typedef  scalar_t__ u32 ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__) ; 
 struct device_node* FUNC1 (struct device_node*,char*) ; 
 struct device_node* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*) ; 
 int FUNC5 (struct device_node*,char*,scalar_t__*) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static struct device_node *
FUNC7(struct device *dev)
{
	struct device_node *np;
	u32 value, ram_code;
	int err;

	if (!FUNC4(dev->of_node, "nvidia,use-ram-code"))
		return FUNC2(dev->of_node);

	ram_code = FUNC6();

	for (np = FUNC1(dev->of_node, "emc-tables"); np;
	     np = FUNC1(np, "emc-tables")) {
		err = FUNC5(np, "nvidia,ram-code", &value);
		if (err || value != ram_code) {
			FUNC3(np);
			continue;
		}

		return np;
	}

	FUNC0(dev, "no memory timings for RAM code %u found in device tree\n",
		ram_code);

	return NULL;
}