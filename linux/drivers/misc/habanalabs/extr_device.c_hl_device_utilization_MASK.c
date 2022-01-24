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
typedef  int uint32_t ;
typedef  size_t u32 ;
struct hl_device_idle_busy_ts {int /*<<< orphan*/  idle_to_busy_ts; int /*<<< orphan*/  busy_to_idle_ts; } ;
struct hl_device {size_t idle_busy_ts_idx; struct hl_device_idle_busy_ts* idle_busy_ts_arr; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 size_t HL_IDLE_BUSY_TS_ARR_SIZE ; 
 int USEC_PER_MSEC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

uint32_t FUNC6(struct hl_device *hdev, uint32_t period_ms)
{
	struct hl_device_idle_busy_ts *ts;
	ktime_t zero_ktime, curr = FUNC2();
	u32 overlap_cnt = 0, last_index = hdev->idle_busy_ts_idx;
	s64 period_us, last_start_us, last_end_us, last_busy_time_us,
		total_busy_time_us = 0, total_busy_time_ms;

	zero_ktime = FUNC3(0, 0);
	period_us = period_ms * USEC_PER_MSEC;
	ts = &hdev->idle_busy_ts_arr[last_index];

	/* check case that device is currently in idle */
	if (!FUNC1(ts->busy_to_idle_ts, zero_ktime) &&
			!FUNC1(ts->idle_to_busy_ts, zero_ktime)) {

		last_index--;
		/* Handle case idle_busy_ts_idx was 0 */
		if (last_index > HL_IDLE_BUSY_TS_ARR_SIZE)
			last_index = HL_IDLE_BUSY_TS_ARR_SIZE - 1;

		ts = &hdev->idle_busy_ts_arr[last_index];
	}

	while (overlap_cnt < HL_IDLE_BUSY_TS_ARR_SIZE) {
		/* Check if we are in last sample case. i.e. if the sample
		 * begun before the sampling period. This could be a real
		 * sample or 0 so need to handle both cases
		 */
		last_start_us = FUNC5(
				FUNC4(curr, ts->idle_to_busy_ts));

		if (last_start_us > period_us) {

			/* First check two cases:
			 * 1. If the device is currently busy
			 * 2. If the device was idle during the whole sampling
			 *    period
			 */

			if (!FUNC1(ts->busy_to_idle_ts, zero_ktime)) {
				/* Check if the device is currently busy */
				if (FUNC1(ts->idle_to_busy_ts,
						zero_ktime))
					return 100;

				/* We either didn't have any activity or we
				 * reached an entry which is 0. Either way,
				 * exit and return what was accumulated so far
				 */
				break;
			}

			/* If sample has finished, check it is relevant */
			last_end_us = FUNC5(
					FUNC4(curr, ts->busy_to_idle_ts));

			if (last_end_us > period_us)
				break;

			/* It is relevant so add it but with adjustment */
			last_busy_time_us = FUNC5(
						FUNC4(ts->busy_to_idle_ts,
						ts->idle_to_busy_ts));
			total_busy_time_us += last_busy_time_us -
					(last_start_us - period_us);
			break;
		}

		/* Check if the sample is finished or still open */
		if (FUNC1(ts->busy_to_idle_ts, zero_ktime))
			last_busy_time_us = FUNC5(
						FUNC4(ts->busy_to_idle_ts,
						ts->idle_to_busy_ts));
		else
			last_busy_time_us = FUNC5(
					FUNC4(curr, ts->idle_to_busy_ts));

		total_busy_time_us += last_busy_time_us;

		last_index--;
		/* Handle case idle_busy_ts_idx was 0 */
		if (last_index > HL_IDLE_BUSY_TS_ARR_SIZE)
			last_index = HL_IDLE_BUSY_TS_ARR_SIZE - 1;

		ts = &hdev->idle_busy_ts_arr[last_index];

		overlap_cnt++;
	}

	total_busy_time_ms = FUNC0(total_busy_time_us,
						USEC_PER_MSEC);

	return FUNC0(total_busy_time_ms * 100, period_ms);
}