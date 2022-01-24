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
typedef  int u16 ;
struct adapter {int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FW_PARAMS_MNEM_DEV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_DBQ_TIMER ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*) ; 

int FUNC5(struct adapter *adap, unsigned int ndbqtimers,
			  u16 *dbqtimers)
{
	int ret, dbqtimerix;

	ret = 0;
	dbqtimerix = 0;
	while (dbqtimerix < ndbqtimers) {
		int nparams, param;
		u32 params[7], vals[7];

		nparams = ndbqtimers - dbqtimerix;
		if (nparams > FUNC0(params))
			nparams = FUNC0(params);

		for (param = 0; param < nparams; param++)
			params[param] =
			  (FUNC1(FW_PARAMS_MNEM_DEV) |
			   FUNC2(FW_PARAMS_PARAM_DEV_DBQ_TIMER) |
			   FUNC3(dbqtimerix + param));
		ret = FUNC4(adap, adap->mbox, adap->pf, 0,
				      nparams, params, vals);
		if (ret)
			break;

		for (param = 0; param < nparams; param++)
			dbqtimers[dbqtimerix++] = vals[param];
	}
	return ret;
}