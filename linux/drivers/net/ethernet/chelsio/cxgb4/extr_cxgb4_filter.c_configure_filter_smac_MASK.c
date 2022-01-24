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
struct filter_entry {int /*<<< orphan*/  tid; TYPE_1__* smt; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCB_SMAC_SEL_M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCB_SMAC_SEL_W ; 
 int /*<<< orphan*/  TF_CCTRL_CWR_S ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct adapter*,struct filter_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct adapter*,struct filter_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct adapter *adap, struct filter_entry *f)
{
	int err;

	/* do a set-tcb for smac-sel and CWR bit.. */
	err = FUNC3(adap, f, f->tid, TF_CCTRL_CWR_S, 1, 1);
	if (err)
		goto smac_err;

	err = FUNC2(adap, f, f->tid, TCB_SMAC_SEL_W,
			    FUNC0(TCB_SMAC_SEL_M),
			    FUNC0(f->smt->idx), 1);
	if (!err)
		return 0;

smac_err:
	FUNC1(adap->pdev_dev, "filter %u smac config failed with error %u\n",
		f->tid, err);
	return err;
}