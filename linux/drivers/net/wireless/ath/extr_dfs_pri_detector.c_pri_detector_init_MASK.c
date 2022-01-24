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
struct radar_detector_specs {int pri_max; int ppb; int num_pri; } ;
struct pri_detector {int window_size; int max_count; struct radar_detector_specs const* rs; int /*<<< orphan*/  pulses; int /*<<< orphan*/  sequences; int /*<<< orphan*/  reset; int /*<<< orphan*/  add_pulse; int /*<<< orphan*/  exit; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pri_detector* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  pri_detector_add_pulse ; 
 int /*<<< orphan*/  pri_detector_exit ; 
 int /*<<< orphan*/  pri_detector_reset ; 

struct pri_detector *FUNC3(const struct radar_detector_specs *rs)
{
	struct pri_detector *de;

	de = FUNC1(sizeof(*de), GFP_ATOMIC);
	if (de == NULL)
		return NULL;
	de->exit = pri_detector_exit;
	de->add_pulse = pri_detector_add_pulse;
	de->reset = pri_detector_reset;

	FUNC0(&de->sequences);
	FUNC0(&de->pulses);
	de->window_size = rs->pri_max * rs->ppb * rs->num_pri;
	de->max_count = rs->ppb * 2;
	de->rs = rs;

	FUNC2();
	return de;
}