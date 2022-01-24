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
struct net_device {int dummy; } ;
struct cas {int /*<<< orphan*/  reset_task; int /*<<< orphan*/  reset_task_pending; int /*<<< orphan*/  reset_task_pending_all; int /*<<< orphan*/ * stat_lock; TYPE_1__* net_stats; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAS_RESET_ALL ; 
 int INTR_MAC_CTRL_STATUS ; 
 int INTR_MIF_STATUS ; 
 int INTR_PCI_ERROR_STATUS ; 
 int INTR_PCS_STATUS ; 
 int INTR_RX_LEN_MISMATCH ; 
 int INTR_RX_MAC_STATUS ; 
 int INTR_RX_TAG_ERROR ; 
 int INTR_TX_MAC_STATUS ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*,struct cas*,int) ; 
 scalar_t__ FUNC3 (struct net_device*,struct cas*,int) ; 
 scalar_t__ FUNC4 (struct net_device*,struct cas*,int) ; 
 scalar_t__ FUNC5 (struct net_device*,struct cas*,int) ; 
 scalar_t__ FUNC6 (struct net_device*,struct cas*,int) ; 
 scalar_t__ FUNC7 (struct net_device*,struct cas*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct cas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev, struct cas *cp,
			    u32 status)
{
	if (status & INTR_RX_TAG_ERROR) {
		/* corrupt RX tag framing */
		FUNC9(cp, rx_err, KERN_DEBUG, cp->dev,
			     "corrupt rx tag framing\n");
		FUNC11(&cp->stat_lock[0]);
		cp->net_stats[0].rx_errors++;
		FUNC12(&cp->stat_lock[0]);
		goto do_reset;
	}

	if (status & INTR_RX_LEN_MISMATCH) {
		/* length mismatch. */
		FUNC9(cp, rx_err, KERN_DEBUG, cp->dev,
			     "length mismatch for rx frame\n");
		FUNC11(&cp->stat_lock[0]);
		cp->net_stats[0].rx_errors++;
		FUNC12(&cp->stat_lock[0]);
		goto do_reset;
	}

	if (status & INTR_PCS_STATUS) {
		if (FUNC5(dev, cp, status))
			goto do_reset;
	}

	if (status & INTR_TX_MAC_STATUS) {
		if (FUNC7(dev, cp, status))
			goto do_reset;
	}

	if (status & INTR_RX_MAC_STATUS) {
		if (FUNC6(dev, cp, status))
			goto do_reset;
	}

	if (status & INTR_MAC_CTRL_STATUS) {
		if (FUNC2(dev, cp, status))
			goto do_reset;
	}

	if (status & INTR_MIF_STATUS) {
		if (FUNC3(dev, cp, status))
			goto do_reset;
	}

	if (status & INTR_PCI_ERROR_STATUS) {
		if (FUNC4(dev, cp, status))
			goto do_reset;
	}
	return 0;

do_reset:
#if 1
	FUNC0(&cp->reset_task_pending);
	FUNC0(&cp->reset_task_pending_all);
	FUNC8(dev, "reset called in cas_abnormal_irq [0x%x]\n", status);
	FUNC10(&cp->reset_task);
#else
	atomic_set(&cp->reset_task_pending, CAS_RESET_ALL);
	netdev_err(dev, "reset called in cas_abnormal_irq\n");
	schedule_work(&cp->reset_task);
#endif
	return 1;
}