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
typedef  unsigned int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  SGE_DBFIFO_STATUS2_A ; 
 int /*<<< orphan*/  SGE_DBFIFO_STATUS_A ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC5 (struct net_device const*) ; 
 unsigned int FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 

unsigned int FUNC7(const struct net_device *dev, int lpfifo)
{
	struct adapter *adap = FUNC5(dev);
	u32 v1, v2, lp_count, hp_count;

	v1 = FUNC6(adap, SGE_DBFIFO_STATUS_A);
	v2 = FUNC6(adap, SGE_DBFIFO_STATUS2_A);
	if (FUNC4(adap->params.chip)) {
		lp_count = FUNC2(v1);
		hp_count = FUNC0(v1);
	} else {
		lp_count = FUNC3(v1);
		hp_count = FUNC1(v2);
	}
	return lpfifo ? lp_count : hp_count;
}