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
struct max8998_platform_data {int /*<<< orphan*/  ono; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct max8998_platform_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct max8998_platform_data* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct max8998_platform_data *FUNC3(
							struct device *dev)
{
	struct max8998_platform_data *pd;

	pd = FUNC1(dev, sizeof(*pd), GFP_KERNEL);
	if (!pd)
		return FUNC0(-ENOMEM);

	pd->ono = FUNC2(dev->of_node, 1);

	/*
	 * ToDo: the 'wakeup' member in the platform data is more of a linux
	 * specfic information. Hence, there is no binding for that yet and
	 * not parsed here.
	 */
	return pd;
}