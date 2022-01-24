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
struct qede_ptp {int /*<<< orphan*/  lock; TYPE_1__* ops; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/  work; int /*<<< orphan*/ * clock; } ;
struct qede_dev {struct qede_ptp* ptp; int /*<<< orphan*/  cdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qede_ptp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct qede_dev *edev)
{
	struct qede_ptp *ptp;

	ptp = edev->ptp;
	if (!ptp)
		return;

	if (ptp->clock) {
		FUNC3(ptp->clock);
		ptp->clock = NULL;
	}

	/* Cancel PTP work queue. Should be done after the Tx queues are
	 * drained to prevent additional scheduling.
	 */
	FUNC0(&ptp->work);
	if (ptp->tx_skb) {
		FUNC1(ptp->tx_skb);
		ptp->tx_skb = NULL;
	}

	/* Disable PTP in HW */
	FUNC4(&ptp->lock);
	ptp->ops->disable(edev->cdev);
	FUNC5(&ptp->lock);

	FUNC2(ptp);
	edev->ptp = NULL;
}