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
struct net_device {int /*<<< orphan*/  name; } ;
struct cas {int hw_running; int opened; int /*<<< orphan*/  pm_mutex; int /*<<< orphan*/  napi; int /*<<< orphan*/  dev; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (struct cas*) ; 
 int /*<<< orphan*/  FUNC1 (struct cas*) ; 
 int /*<<< orphan*/  FUNC2 (struct cas*) ; 
 int /*<<< orphan*/  FUNC3 (struct cas*,int) ; 
 int /*<<< orphan*/  cas_interrupt ; 
 int /*<<< orphan*/  FUNC4 (struct cas*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct cas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cas*) ; 
 int /*<<< orphan*/  FUNC7 (struct cas*) ; 
 int /*<<< orphan*/  FUNC8 (struct cas*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct cas*) ; 
 int /*<<< orphan*/  FUNC10 (struct cas*) ; 
 int /*<<< orphan*/  FUNC11 (struct cas*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 struct cas* FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC19(struct net_device *dev)
{
	struct cas *cp = FUNC16(dev);
	int hw_was_up, err;
	unsigned long flags;

	FUNC12(&cp->pm_mutex);

	hw_was_up = cp->hw_running;

	/* The power-management mutex protects the hw_running
	 * etc. state so it is safe to do this bit without cp->lock
	 */
	if (!cp->hw_running) {
		/* Reset the chip */
		FUNC4(cp, flags);
		/* We set the second arg to cas_reset to zero
		 * because cas_init_hw below will have its second
		 * argument set to non-zero, which will force
		 * autonegotiation to start.
		 */
		FUNC5(cp, 0);
		cp->hw_running = 1;
		FUNC11(cp, flags);
	}

	err = -ENOMEM;
	if (FUNC9(cp) < 0)
		goto err_unlock;

	/* alloc rx descriptors */
	if (FUNC0(cp) < 0)
		goto err_tx_tiny;

	/* allocate spares */
	FUNC7(cp);
	FUNC8(cp, GFP_KERNEL);

	/* We can now request the interrupt as we know it's masked
	 * on the controller. cassini+ has up to 4 interrupts
	 * that can be used, but you need to do explicit pci interrupt
	 * mapping to expose them
	 */
	if (FUNC18(cp->pdev->irq, cas_interrupt,
			IRQF_SHARED, dev->name, (void *) dev)) {
		FUNC15(cp->dev, "failed to request irq !\n");
		err = -EAGAIN;
		goto err_spare;
	}

#ifdef USE_NAPI
	napi_enable(&cp->napi);
#endif
	/* init hw */
	FUNC4(cp, flags);
	FUNC1(cp);
	FUNC3(cp, !hw_was_up);
	cp->opened = 1;
	FUNC11(cp, flags);

	FUNC17(dev);
	FUNC13(&cp->pm_mutex);
	return 0;

err_spare:
	FUNC6(cp);
	FUNC2(cp);
err_tx_tiny:
	FUNC10(cp);
err_unlock:
	FUNC13(&cp->pm_mutex);
	return err;
}