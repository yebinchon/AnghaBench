#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct pt3_adapter {TYPE_1__* thread; TYPE_2__ dvb_adap; void* num_discard; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int NSEC_PER_MSEC ; 
 int PT3_FETCH_DELAY ; 
 int PT3_FETCH_DELAY_DELTA ; 
 void* PT3_INITIAL_BUF_DROPS ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pt3_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct pt3_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(void *data)
{
	struct pt3_adapter *adap = data;
	ktime_t delay;
	bool was_frozen;

#define PT3_INITIAL_BUF_DROPS 4
#define PT3_FETCH_DELAY 10
#define PT3_FETCH_DELAY_DELTA 2

	FUNC4(adap);
	adap->num_discard = PT3_INITIAL_BUF_DROPS;

	FUNC0(adap->dvb_adap.device, "PT3: [%s] started\n",
		adap->thread->comm);
	FUNC7();
	while (!FUNC2(&was_frozen)) {
		if (was_frozen)
			adap->num_discard = PT3_INITIAL_BUF_DROPS;

		FUNC5(adap);

		delay = FUNC3(0, PT3_FETCH_DELAY * NSEC_PER_MSEC);
		FUNC6(TASK_UNINTERRUPTIBLE);
		FUNC1(&delay,
					PT3_FETCH_DELAY_DELTA * NSEC_PER_MSEC,
					HRTIMER_MODE_REL);
	}
	FUNC0(adap->dvb_adap.device, "PT3: [%s] exited\n",
		adap->thread->comm);
	return 0;
}