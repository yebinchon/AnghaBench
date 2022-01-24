#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ql3_adapter {TYPE_1__* pdev; int /*<<< orphan*/  flags; scalar_t__ msi; int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  napi; int /*<<< orphan*/  adapter_timer; struct net_device* ndev; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int HZ ; 
 unsigned long IRQF_SHARED ; 
 int /*<<< orphan*/  QL_ADAPTER_UP ; 
 int /*<<< orphan*/  QL_DRVR_SEM_MASK ; 
 int /*<<< orphan*/  QL_MSI_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  ql3xxx_isr ; 
 int FUNC8 (struct ql3_adapter*) ; 
 scalar_t__ FUNC9 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct ql3_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ql3_adapter*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct ql3_adapter *qdev)
{
	struct net_device *ndev = qdev->ndev;
	int err;
	unsigned long irq_flags = IRQF_SHARED;
	unsigned long hw_flags;

	if (FUNC9(qdev)) {
		FUNC4(ndev, "Unable to  allocate buffers\n");
		return -ENOMEM;
	}

	if (qdev->msi) {
		if (FUNC7(qdev->pdev)) {
			FUNC4(ndev,
				   "User requested MSI, but MSI failed to initialize.  Continuing without MSI.\n");
			qdev->msi = 0;
		} else {
			FUNC5(ndev, "MSI Enabled...\n");
			FUNC14(QL_MSI_ENABLED, &qdev->flags);
			irq_flags &= ~IRQF_SHARED;
		}
	}

	err = FUNC13(qdev->pdev->irq, ql3xxx_isr,
			  irq_flags, ndev->name, ndev);
	if (err) {
		FUNC4(ndev,
			   "Failed to reserve interrupt %d - already in use\n",
			   qdev->pdev->irq);
		goto err_irq;
	}

	FUNC15(&qdev->hw_lock, hw_flags);

	err = FUNC12(qdev);
	if (err) {
		err = FUNC8(qdev);
		if (err) {
			FUNC4(ndev, "Unable to initialize adapter\n");
			goto err_init;
		}
		FUNC4(ndev, "Releasing driver lock\n");
		FUNC11(qdev, QL_DRVR_SEM_MASK);
	} else {
		FUNC4(ndev, "Could not acquire driver lock\n");
		goto err_lock;
	}

	FUNC16(&qdev->hw_lock, hw_flags);

	FUNC14(QL_ADAPTER_UP, &qdev->flags);

	FUNC2(&qdev->adapter_timer, jiffies + HZ * 1);

	FUNC3(&qdev->napi);
	FUNC10(qdev);
	return 0;

err_init:
	FUNC11(qdev, QL_DRVR_SEM_MASK);
err_lock:
	FUNC16(&qdev->hw_lock, hw_flags);
	FUNC1(qdev->pdev->irq, ndev);
err_irq:
	if (qdev->msi && FUNC17(QL_MSI_ENABLED, &qdev->flags)) {
		FUNC5(ndev, "calling pci_disable_msi()\n");
		FUNC0(QL_MSI_ENABLED, &qdev->flags);
		FUNC6(qdev->pdev);
	}
	return err;
}