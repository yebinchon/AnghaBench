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
struct net_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct greth_private {int /*<<< orphan*/  napi; TYPE_1__* regs; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct greth_private*) ; 
 int FUNC7 (struct greth_private*) ; 
 int /*<<< orphan*/  greth_interrupt ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct greth_private* FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	struct greth_private *greth = FUNC9(dev);
	int err;

	err = FUNC7(greth);
	if (err) {
		if (FUNC10(greth))
			FUNC2(&dev->dev, "Could not allocate memory for DMA rings\n");
		return err;
	}

	err = FUNC12(greth->irq, greth_interrupt, 0, "eth", (void *) dev);
	if (err) {
		if (FUNC10(greth))
			FUNC2(&dev->dev, "Could not allocate interrupt %d\n", dev->irq);
		FUNC3(greth);
		return err;
	}

	if (FUNC10(greth))
		FUNC1(&dev->dev, " starting queue\n");
	FUNC11(dev);

	FUNC0(greth->regs->status, 0xFF);

	FUNC8(&greth->napi);

	FUNC4(greth);
	FUNC6(greth);
	FUNC5(greth);
	return 0;

}