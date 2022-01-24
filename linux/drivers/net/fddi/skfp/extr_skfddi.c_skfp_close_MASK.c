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
struct TYPE_2__ {int /*<<< orphan*/  QueueSkb; int /*<<< orphan*/  SendSkbQueue; } ;
struct s_smc {TYPE_1__ os; } ;
struct net_device {int /*<<< orphan*/  irq; } ;
typedef  TYPE_1__ skfddi_priv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MAX_TX_QUEUE_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC4 (struct s_smc*) ; 
 struct s_smc* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct s_smc*,int) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct s_smc *smc = FUNC5(dev);
	skfddi_priv *bp = &smc->os;

	FUNC0();
	FUNC8(smc, 1);
	FUNC1(smc);
	FUNC4(smc);
	FUNC3(smc);

	FUNC6(dev);
	/* Deregister (free) IRQ */
	FUNC2(dev->irq, dev);

	FUNC7(&bp->SendSkbQueue);
	bp->QueueSkb = MAX_TX_QUEUE_LEN;

	return 0;
}