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
struct qede_tx_queue {scalar_t__ sw_tx_cons; scalar_t__ sw_tx_prod; int /*<<< orphan*/  index; } ;
struct qede_dev {int /*<<< orphan*/  cdev; TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* drain ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*,int /*<<< orphan*/ ,...) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct qede_dev *edev,
			  struct qede_tx_queue *txq, bool allow_drain)
{
	int rc, cnt = 1000;

	while (txq->sw_tx_cons != txq->sw_tx_prod) {
		if (!cnt) {
			if (allow_drain) {
				FUNC0(edev,
					  "Tx queue[%d] is stuck, requesting MCP to drain\n",
					  txq->index);
				rc = edev->ops->common->drain(edev->cdev);
				if (rc)
					return rc;
				return FUNC4(edev, txq, false);
			}
			FUNC0(edev,
				  "Timeout waiting for tx queue[%d]: PROD=%d, CONS=%d\n",
				  txq->index, txq->sw_tx_prod,
				  txq->sw_tx_cons);
			return -ENODEV;
		}
		cnt--;
		FUNC3(1000, 2000);
		FUNC1();
	}

	/* FW finished processing, wait for HW to transmit all tx packets */
	FUNC3(1000, 2000);

	return 0;
}