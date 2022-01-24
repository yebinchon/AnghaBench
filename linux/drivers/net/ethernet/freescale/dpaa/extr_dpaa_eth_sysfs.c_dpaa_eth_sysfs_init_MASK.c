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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dpaa_eth_attrs ; 

void FUNC4(struct device *dev)
{
	int i;

	for (i = 0; i < FUNC0(dpaa_eth_attrs); i++)
		if (FUNC2(dev, &dpaa_eth_attrs[i])) {
			FUNC1(dev, "Error creating sysfs file\n");
			while (i > 0)
				FUNC3(dev, &dpaa_eth_attrs[--i]);
			return;
		}
}