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
typedef  int /*<<< orphan*/  u32 ;
struct peak_time_ref {int /*<<< orphan*/  ts_dev_2; int /*<<< orphan*/  ts_dev_1; int /*<<< orphan*/  tick_count; void* tv_host; scalar_t__ ts_total; void* tv_host_0; } ;
typedef  void* ktime_t ;

/* Variables and functions */
 unsigned long long NSEC_PER_SEC ; 
 void* FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,void*) ; 
 unsigned long long FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct peak_time_ref*,int /*<<< orphan*/ ) ; 

void FUNC5(struct peak_time_ref *time_ref, u32 ts_now)
{
	if (FUNC3(time_ref->tv_host_0) == 0) {
		/* use monotonic clock to correctly compute further deltas */
		time_ref->tv_host_0 = FUNC0();
		time_ref->tv_host = FUNC1(0, 0);
	} else {
		/*
		 * delta_us should not be >= 2^32 => delta should be < 4294s
		 * handle 32-bits wrapping here: if count of s. reaches 4200,
		 * reset counters and change time base
		 */
		if (FUNC3(time_ref->tv_host)) {
			ktime_t delta = FUNC2(time_ref->tv_host,
						  time_ref->tv_host_0);
			if (FUNC3(delta) > (4200ull * NSEC_PER_SEC)) {
				time_ref->tv_host_0 = time_ref->tv_host;
				time_ref->ts_total = 0;
			}
		}

		time_ref->tv_host = FUNC0();
		time_ref->tick_count++;
	}

	time_ref->ts_dev_1 = time_ref->ts_dev_2;
	FUNC4(time_ref, ts_now);
}