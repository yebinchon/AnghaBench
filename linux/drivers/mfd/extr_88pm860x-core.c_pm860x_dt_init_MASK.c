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
struct pm860x_platform_data {int irq_mode; scalar_t__ companion_addr; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device_node*,char*,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct device_node *np,
				    struct device *dev,
				    struct pm860x_platform_data *pdata)
{
	int ret;

	if (FUNC1(np, "marvell,88pm860x-irq-read-clr", NULL))
		pdata->irq_mode = 1;
	ret = FUNC2(np, "marvell,88pm860x-slave-addr",
				   &pdata->companion_addr);
	if (ret) {
		FUNC0(dev,
			"Not found \"marvell,88pm860x-slave-addr\" property\n");
		pdata->companion_addr = 0;
	}
	return 0;
}