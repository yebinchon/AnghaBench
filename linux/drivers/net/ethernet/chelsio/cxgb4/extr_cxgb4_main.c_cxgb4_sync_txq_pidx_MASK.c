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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  SGE_PF_KDOORBELL_A ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC5 (struct net_device*) ; 
 int FUNC6 (struct adapter*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct net_device *dev, u16 qid, u16 pidx,
			u16 size)
{
	struct adapter *adap = FUNC5(dev);
	u16 hw_pidx, hw_cidx;
	int ret;

	ret = FUNC6(adap, qid, &hw_pidx, &hw_cidx);
	if (ret)
		goto out;

	if (pidx != hw_pidx) {
		u16 delta;
		u32 val;

		if (pidx >= hw_pidx)
			delta = pidx - hw_pidx;
		else
			delta = size - hw_pidx + pidx;

		if (FUNC4(adap->params.chip))
			val = FUNC2(delta);
		else
			val = FUNC1(delta);
		FUNC8();
		FUNC7(adap, FUNC0(SGE_PF_KDOORBELL_A),
			     FUNC3(qid) | val);
	}
out:
	return ret;
}