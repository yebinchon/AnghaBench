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
struct kempld_platform_data {int /*<<< orphan*/  (* get_hardware_mutex ) (struct kempld_device_data*) ;} ;
struct kempld_device_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct kempld_platform_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kempld_device_data*) ; 

void FUNC3(struct kempld_device_data *pld)
{
	const struct kempld_platform_data *pdata = FUNC0(pld->dev);

	FUNC1(&pld->lock);
	pdata->get_hardware_mutex(pld);
}