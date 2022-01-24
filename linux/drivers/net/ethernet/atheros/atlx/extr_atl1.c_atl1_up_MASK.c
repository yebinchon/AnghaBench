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
struct net_device {int /*<<< orphan*/  name; } ;
struct atl1_adapter {TYPE_1__* pdev; int /*<<< orphan*/  napi; struct net_device* netdev; } ;
typedef  int s32 ;
struct TYPE_3__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int IRQF_SHARED ; 
 int FUNC0 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1_adapter*) ; 
 int FUNC3 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  atl1_intr ; 
 int /*<<< orphan*/  FUNC5 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static s32 FUNC16(struct atl1_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int err;
	int irq_flags = 0;

	/* hardware has been reset, we need to reload some things */
	FUNC7(netdev);
	FUNC4(adapter);
	FUNC6(adapter);
	err = FUNC0(adapter);
	if (FUNC15(!err))
		/* no RX BUFFER allocated */
		return -ENOMEM;

	if (FUNC15(FUNC3(adapter))) {
		err = -EIO;
		goto err_up;
	}

	err = FUNC13(adapter->pdev);
	if (err) {
		if (FUNC10(adapter))
			FUNC8(&adapter->pdev->dev,
				"Unable to enable MSI: %d\n", err);
		irq_flags |= IRQF_SHARED;
	}

	err = FUNC14(adapter->pdev->irq, atl1_intr, irq_flags,
			netdev->name, netdev);
	if (FUNC15(err))
		goto err_up;

	FUNC9(&adapter->napi);
	FUNC5(adapter);
	FUNC1(adapter);
	FUNC11(netdev);
	return 0;

err_up:
	FUNC12(adapter->pdev);
	/* free rx_buffers */
	FUNC2(adapter);
	return err;
}