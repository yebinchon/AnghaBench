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
struct gem {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct gem*) ; 
 int /*<<< orphan*/  FUNC1 (struct gem*) ; 
 int /*<<< orphan*/  FUNC2 (struct gem*) ; 
 int /*<<< orphan*/  gem_interrupt ; 
 int /*<<< orphan*/  FUNC3 (struct gem*) ; 
 int /*<<< orphan*/  FUNC4 (struct gem*) ; 
 int /*<<< orphan*/  FUNC5 (struct gem*) ; 
 int /*<<< orphan*/  FUNC6 (struct gem*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 struct gem* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	struct gem *gp = FUNC8(dev);
	int rc;

	/* Enable the cell */
	FUNC1(gp);

	/* Make sure PCI access and bus master are enabled */
	rc = FUNC10(gp->pdev);
	if (rc) {
		FUNC7(dev, "Failed to enable chip on PCI bus !\n");

		/* Put cell and forget it for now, it will be considered as
		 * still asleep, a new sleep cycle may bring it back
		 */
		FUNC4(gp);
		return -ENXIO;
	}
	FUNC11(gp->pdev);

	/* Init & setup chip hardware */
	FUNC5(gp);

	/* An interrupt might come in handy */
	rc = FUNC12(gp->pdev->irq, gem_interrupt,
			 IRQF_SHARED, dev->name, (void *)dev);
	if (rc) {
		FUNC7(dev, "failed to request irq !\n");

		FUNC6(gp);
		FUNC0(gp);
		FUNC4(gp);
		return rc;
	}

	/* Mark us as attached again if we come from resume(), this has
	 * no effect if we weren't detached and needs to be done now.
	 */
	FUNC9(dev);

	/* Restart NAPI & queues */
	FUNC3(gp);

	/* Detect & init PHY, start autoneg etc... this will
	 * eventually result in starting DMA operations when
	 * the link is up
	 */
	FUNC2(gp);

	return 0;
}