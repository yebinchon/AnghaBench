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
typedef  int u32 ;
struct sge {int dbqtimer_tick; int /*<<< orphan*/  dbqtimer_val; } ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int flags; int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; struct sge sge; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CXGB4_SGE_DBQ_TIMER ; 
 int /*<<< orphan*/  FW_PARAMS_MNEM_DEV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_DBQ_TIMERTICK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct port_info* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, int usecs)
{
	struct port_info *pi = FUNC3(dev);
	struct adapter *adap = pi->adapter;
	struct sge *s = &adap->sge;
	u32 param, val;
	int ret;

	if (!(adap->flags & CXGB4_SGE_DBQ_TIMER))
		return 0;

	/* return early if it's the same Timer Tick we're already using */
	if (s->dbqtimer_tick == usecs)
		return 0;

	/* attempt to set the new Timer Tick value */
	param = (FUNC1(FW_PARAMS_MNEM_DEV) |
		 FUNC2(FW_PARAMS_PARAM_DEV_DBQ_TIMERTICK));
	val = usecs;
	ret = FUNC5(adap, adap->mbox, adap->pf, 0, 1, &param, &val);
	if (ret)
		return ret;
	s->dbqtimer_tick = usecs;

	/* if successful, reread resulting dependent Timer values */
	ret = FUNC4(adap, FUNC0(s->dbqtimer_val),
				    s->dbqtimer_val);
	return ret;
}