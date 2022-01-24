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
struct dpot_data {int wipers; int /*<<< orphan*/  feat; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DPOT_RDAC0 ; 
 int MAX_RDACS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int) ; 
 struct dpot_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpot_data*) ; 

int FUNC3(struct device *dev)
{
	struct dpot_data *data = FUNC1(dev);
	int i;

	for (i = DPOT_RDAC0; i < MAX_RDACS; i++)
		if (data->wipers & (1 << i))
			FUNC0(dev, data->feat, i);

	FUNC2(data);

	return 0;
}