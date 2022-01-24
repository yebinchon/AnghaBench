#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dvbdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  num; int /*<<< orphan*/  device; } ;
struct pt3_adapter {struct task_struct* thread; TYPE_3__ dmxdev; TYPE_1__ dvb_adap; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ,struct pt3_adapter*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pt3_fetch_thread ; 
 int FUNC4 (struct pt3_adapter*) ; 

__attribute__((used)) static int FUNC5(struct pt3_adapter *adap)
{
	struct task_struct *thread;

	/* start fetching thread */
	thread = FUNC3(pt3_fetch_thread, adap, "pt3-ad%i-dmx%i",
				adap->dvb_adap.num, adap->dmxdev.dvbdev->id);
	if (FUNC0(thread)) {
		int ret = FUNC1(thread);

		adap->thread = NULL;
		FUNC2(adap->dvb_adap.device,
			 "PT3 (adap:%d, dmx:%d): failed to start kthread\n",
			 adap->dvb_adap.num, adap->dmxdev.dvbdev->id);
		return ret;
	}
	adap->thread = thread;

	return FUNC4(adap);
}