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
struct twl4030_power_data {scalar_t__ use_poweroff; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device_node*,char*) ; 

__attribute__((used)) static bool FUNC1(const struct twl4030_power_data *pdata,
					struct device_node *node)
{
	if (pdata && pdata->use_poweroff)
		return true;

	if (FUNC0(node, "ti,system-power-controller"))
		return true;

	if (FUNC0(node, "ti,use_poweroff"))
		return true;

	return false;
}