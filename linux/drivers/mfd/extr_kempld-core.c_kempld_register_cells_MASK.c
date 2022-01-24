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
struct kempld_platform_data {int (* register_cells ) (struct kempld_device_data*) ;} ;
struct kempld_device_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct kempld_platform_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kempld_device_data*) ; 

__attribute__((used)) static int FUNC2(struct kempld_device_data *pld)
{
	const struct kempld_platform_data *pdata = FUNC0(pld->dev);

	return pdata->register_cells(pld);
}