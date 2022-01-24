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
struct typhoon {int /*<<< orphan*/  ioaddr; int /*<<< orphan*/  napi; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  NoWait ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  TYPHOON_STATUS_WAITING_FOR_HOST ; 
 int /*<<< orphan*/  WaitSleep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct typhoon* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ FUNC7 (struct typhoon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  typhoon_interrupt ; 
 int FUNC8 (struct typhoon*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct typhoon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct typhoon*) ; 
 int FUNC12 (struct typhoon*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct net_device *dev)
{
	struct typhoon *tp = FUNC4(dev);
	int err;

	err = FUNC8(tp);
	if (err)
		goto out;

	err = FUNC12(tp, WaitSleep);
	if(err < 0) {
		FUNC3(dev, "unable to wakeup device\n");
		goto out_sleep;
	}

	err = FUNC6(dev->irq, typhoon_interrupt, IRQF_SHARED,
				dev->name, dev);
	if(err < 0)
		goto out_sleep;

	FUNC2(&tp->napi);

	err = FUNC11(tp);
	if(err < 0) {
		FUNC1(&tp->napi);
		goto out_irq;
	}

	FUNC5(dev);
	return 0;

out_irq:
	FUNC0(dev->irq, dev);

out_sleep:
	if(FUNC7(tp, TYPHOON_STATUS_WAITING_FOR_HOST) < 0) {
		FUNC3(dev, "unable to reboot into sleep img\n");
		FUNC9(tp->ioaddr, NoWait);
		goto out;
	}

	if(FUNC10(tp, PCI_D3hot, 0) < 0)
		FUNC3(dev, "unable to go back to sleep\n");

out:
	return err;
}