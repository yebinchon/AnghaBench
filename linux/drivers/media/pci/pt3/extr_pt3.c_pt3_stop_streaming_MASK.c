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
struct TYPE_3__ {int /*<<< orphan*/  num; int /*<<< orphan*/  device; } ;
struct pt3_adapter {int /*<<< orphan*/ * thread; TYPE_2__* fe; TYPE_1__ dvb_adap; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pt3_adapter*) ; 

__attribute__((used)) static int FUNC3(struct pt3_adapter *adap)
{
	int ret;

	ret = FUNC2(adap);
	if (ret)
		FUNC0(adap->dvb_adap.device,
			 "PT3: failed to stop streaming of adap:%d/FE:%d\n",
			 adap->dvb_adap.num, adap->fe->id);

	/* kill the fetching thread */
	ret = FUNC1(adap->thread);
	adap->thread = NULL;
	return ret;
}