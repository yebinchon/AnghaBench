#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_2__ {unsigned long long beacon_int; int /*<<< orphan*/  dev; } ;
struct mt76x02_dev {int /*<<< orphan*/  pre_tbtt_timer; TYPE_1__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  MT_TBTT_TIMER ; 
 int /*<<< orphan*/  MT_TBTT_TIMER_VAL ; 
 int /*<<< orphan*/  MT_TSF_TIMER_DW0 ; 
 int /*<<< orphan*/  MT_TSF_TIMER_DW1 ; 
 int PRE_TBTT_USEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mt76x02_dev *dev)
{
	u32 tbtt, dw0, dw1;
	u64 tsf, time;

	/* Get remaining TBTT in usec */
	tbtt = FUNC2(dev, MT_TBTT_TIMER, MT_TBTT_TIMER_VAL);
	tbtt *= 32;

	dw0 = FUNC3(dev, MT_TSF_TIMER_DW0);
	dw1 = FUNC3(dev, MT_TSF_TIMER_DW1);
	tsf = (u64)dw0 << 32 | dw1;
	FUNC0(dev->mt76.dev, "TSF: %llu us TBTT %u us\n", tsf, tbtt);

	/* Convert beacon interval in TU (1024 usec) to nsec */
	time = ((1000000000ull * dev->mt76.beacon_int) >> 10);

	/* Adjust time to trigger hrtimer 8ms before TBTT */
	if (tbtt < PRE_TBTT_USEC)
		time -= (PRE_TBTT_USEC - tbtt) * 1000ull;
	else
		time += (tbtt - PRE_TBTT_USEC) * 1000ull;

	FUNC1(&dev->pre_tbtt_timer, time, HRTIMER_MODE_REL);
}