#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int mult; scalar_t__ shift; int /*<<< orphan*/  mask; int /*<<< orphan*/  read; } ;
struct qede_ptp {TYPE_2__ cc; int /*<<< orphan*/  tc; int /*<<< orphan*/  work; TYPE_1__* ops; int /*<<< orphan*/  lock; } ;
struct qede_dev {int /*<<< orphan*/  cdev; struct qede_ptp* ptp; } ;
struct TYPE_4__ {int (* enable ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qede_ptp_read_cc ; 
 int /*<<< orphan*/  qede_ptp_task ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct qede_dev *edev, bool init_tc)
{
	struct qede_ptp *ptp;
	int rc;

	ptp = edev->ptp;
	if (!ptp)
		return -EINVAL;

	FUNC6(&ptp->lock);

	/* Configure PTP in HW */
	rc = ptp->ops->enable(edev->cdev);
	if (rc) {
		FUNC1(edev, "PTP HW enable failed\n");
		return rc;
	}

	/* Init work queue for Tx timestamping */
	FUNC2(&ptp->work, qede_ptp_task);

	/* Init cyclecounter and timecounter. This is done only in the first
	 * load. If done in every load, PTP application will fail when doing
	 * unload / load (e.g. MTU change) while it is running.
	 */
	if (init_tc) {
		FUNC5(&ptp->cc, 0, sizeof(ptp->cc));
		ptp->cc.read = qede_ptp_read_cc;
		ptp->cc.mask = FUNC0(64);
		ptp->cc.shift = 0;
		ptp->cc.mult = 1;

		FUNC8(&ptp->tc, &ptp->cc,
				 FUNC4(FUNC3()));
	}

	return rc;
}