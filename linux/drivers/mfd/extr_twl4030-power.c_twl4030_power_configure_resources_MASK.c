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
struct twl4030_resconfig {scalar_t__ resource; } ;
struct twl4030_power_data {struct twl4030_resconfig* board_config; struct twl4030_resconfig* resource_config; } ;

/* Variables and functions */
 int FUNC0 (struct twl4030_resconfig*) ; 
 int /*<<< orphan*/  FUNC1 (struct twl4030_resconfig*,struct twl4030_resconfig*) ; 

__attribute__((used)) static int
FUNC2(const struct twl4030_power_data *pdata)
{
	struct twl4030_resconfig *resconfig = pdata->resource_config;
	struct twl4030_resconfig *boardconf = pdata->board_config;
	int err;

	if (resconfig) {
		if (boardconf)
			FUNC1(resconfig, boardconf);

		while (resconfig->resource) {
			err = FUNC0(resconfig);
			if (err)
				return err;
			resconfig++;
		}
	}

	return 0;
}