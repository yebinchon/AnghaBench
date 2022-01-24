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
typedef  int u64 ;
struct qed_simd_fp_handler {int /*<<< orphan*/  token; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;} ;
struct qed_hwfn {struct qed_simd_fp_handler* simd_proto_handler; int /*<<< orphan*/  sp_dpc; } ;
struct qed_dev {int num_hwfns; struct qed_hwfn* hwfns; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  NETIF_MSG_INTR ; 
 int FUNC2 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_instance)
{
	struct qed_dev *cdev = (struct qed_dev *)dev_instance;
	struct qed_hwfn *hwfn;
	irqreturn_t rc = IRQ_NONE;
	u64 status;
	int i, j;

	for (i = 0; i < cdev->num_hwfns; i++) {
		status = FUNC2(&cdev->hwfns[i]);

		if (!status)
			continue;

		hwfn = &cdev->hwfns[i];

		/* Slowpath interrupt */
		if (FUNC5(status & 0x1)) {
			FUNC4(hwfn->sp_dpc);
			status &= ~0x1;
			rc = IRQ_HANDLED;
		}

		/* Fastpath interrupts */
		for (j = 0; j < 64; j++) {
			if ((0x2ULL << j) & status) {
				struct qed_simd_fp_handler *p_handler =
					&hwfn->simd_proto_handler[j];

				if (p_handler->func)
					p_handler->func(p_handler->token);
				else
					FUNC0(hwfn,
						  "Not calling fastpath handler as it is NULL [handler #%d, status 0x%llx]\n",
						  j, status);

				status &= ~(0x2ULL << j);
				rc = IRQ_HANDLED;
			}
		}

		if (FUNC5(status))
			FUNC1(hwfn, NETIF_MSG_INTR,
				   "got an unknown interrupt status 0x%llx\n",
				   status);
	}

	return rc;
}