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
struct TYPE_3__ {scalar_t__ frame_gap; int /*<<< orphan*/  control; } ;
struct TYPE_4__ {TYPE_1__ wregs; } ;
struct sgiseeq_regs {int /*<<< orphan*/  tstat; TYPE_2__ rw; } ;
struct sgiseeq_private {int /*<<< orphan*/  tx_desc; int /*<<< orphan*/  rx_desc; int /*<<< orphan*/  control; scalar_t__ is_edlc; struct hpc3_ethregs* hregs; } ;
struct net_device {int dummy; } ;
struct hpc3_ethregs {void* tx_ndptr; void* rx_ndptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSTAT_INIT_EDLC ; 
 int /*<<< orphan*/  TSTAT_INIT_SEEQ ; 
 void* FUNC0 (struct sgiseeq_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hpc3_ethregs*,struct sgiseeq_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct sgiseeq_private*,struct hpc3_ethregs*,struct sgiseeq_regs*) ; 
 int FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct sgiseeq_private *sp,
		     struct sgiseeq_regs *sregs)
{
	struct hpc3_ethregs *hregs = sp->hregs;
	int err;

	FUNC1(hregs, sregs);
	err = FUNC3(dev);
	if (err)
		return err;

	/* Setup to field the proper interrupt types. */
	if (sp->is_edlc) {
		sregs->tstat = TSTAT_INIT_EDLC;
		sregs->rw.wregs.control = sp->control;
		sregs->rw.wregs.frame_gap = 0;
	} else {
		sregs->tstat = TSTAT_INIT_SEEQ;
	}

	hregs->rx_ndptr = FUNC0(sp, sp->rx_desc);
	hregs->tx_ndptr = FUNC0(sp, sp->tx_desc);

	FUNC2(sp, hregs, sregs);
	return 0;
}