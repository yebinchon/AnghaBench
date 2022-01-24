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
struct gpmc_timings {int dummy; } ;
struct gpmc_settings {scalar_t__ sync_write; scalar_t__ sync_read; scalar_t__ mux_add_data; } ;
struct gpmc_device_timings {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpmc_timings*,struct gpmc_device_timings*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gpmc_timings*,struct gpmc_device_timings*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpmc_timings*,struct gpmc_device_timings*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gpmc_timings*,struct gpmc_device_timings*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gpmc_timings*,struct gpmc_device_timings*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gpmc_timings*) ; 
 int /*<<< orphan*/  FUNC6 (struct gpmc_timings*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct gpmc_timings *gpmc_t,
		      struct gpmc_settings *gpmc_s,
		      struct gpmc_device_timings *dev_t)
{
	bool mux = false, sync = false;

	if (gpmc_s) {
		mux = gpmc_s->mux_add_data ? true : false;
		sync = (gpmc_s->sync_read || gpmc_s->sync_write);
	}

	FUNC6(gpmc_t, 0, sizeof(*gpmc_t));

	FUNC2(gpmc_t, dev_t, sync);

	if (gpmc_s && gpmc_s->sync_read)
		FUNC3(gpmc_t, dev_t, mux);
	else
		FUNC0(gpmc_t, dev_t, mux);

	if (gpmc_s && gpmc_s->sync_write)
		FUNC4(gpmc_t, dev_t, mux);
	else
		FUNC1(gpmc_t, dev_t, mux);

	/* TODO: remove, see function definition */
	FUNC5(gpmc_t);

	return 0;
}