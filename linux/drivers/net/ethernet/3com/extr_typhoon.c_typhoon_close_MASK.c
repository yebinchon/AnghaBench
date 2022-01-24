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
struct typhoon {int /*<<< orphan*/  napi; } ;
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  TYPHOON_STATUS_WAITING_FOR_HOST ; 
 int /*<<< orphan*/  WaitSleep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct typhoon* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct typhoon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct typhoon*) ; 
 int /*<<< orphan*/  FUNC7 (struct typhoon*) ; 
 scalar_t__ FUNC8 (struct typhoon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct typhoon*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct net_device *dev)
{
	struct typhoon *tp = FUNC3(dev);

	FUNC4(dev);
	FUNC1(&tp->napi);

	if(FUNC9(tp, WaitSleep) < 0)
		FUNC2(dev, "unable to stop runtime\n");

	/* Make sure there is no irq handler running on a different CPU. */
	FUNC0(dev->irq, dev);

	FUNC6(tp);
	FUNC7(tp);

	if(FUNC5(tp, TYPHOON_STATUS_WAITING_FOR_HOST) < 0)
		FUNC2(dev, "unable to boot sleep image\n");

	if(FUNC8(tp, PCI_D3hot, 0) < 0)
		FUNC2(dev, "unable to put card to sleep\n");

	return 0;
}