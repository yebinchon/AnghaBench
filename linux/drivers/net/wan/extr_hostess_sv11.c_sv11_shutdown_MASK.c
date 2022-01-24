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
struct TYPE_2__ {int /*<<< orphan*/  netdevice; scalar_t__ ctrlio; int /*<<< orphan*/  txdma; int /*<<< orphan*/  rxdma; } ;
struct z8530_dev {TYPE_1__ chanA; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int dma ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct z8530_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct z8530_dev*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct z8530_dev*) ; 

__attribute__((used)) static void FUNC7(struct z8530_dev *dev)
{
	FUNC5(dev->chanA.netdevice);
	FUNC6(dev);
	FUNC1(dev->irq, dev);
	if (dma) {
		if (dma == 1)
			FUNC0(dev->chanA.rxdma);
		FUNC0(dev->chanA.txdma);
	}
	FUNC4(dev->chanA.ctrlio - 1, 8);
	FUNC2(dev->chanA.netdevice);
	FUNC3(dev);
}