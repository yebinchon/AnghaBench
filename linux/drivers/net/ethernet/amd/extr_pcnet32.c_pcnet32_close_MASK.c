#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcnet32_private {int /*<<< orphan*/  lock; TYPE_2__* a; int /*<<< orphan*/  napi; int /*<<< orphan*/  watchdog_timer; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_missed_errors; } ;
struct net_device {unsigned long base_addr; int /*<<< orphan*/  irq; TYPE_1__ stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* write_bcr ) (unsigned long,int,int) ;int /*<<< orphan*/  (* write_csr ) (unsigned long,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* read_csr ) (unsigned long,int) ;} ;

/* Variables and functions */
 int CSR0 ; 
 int /*<<< orphan*/  CSR0_STOP ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct pcnet32_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcnet32_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long,int,int) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev)
{
	unsigned long ioaddr = dev->base_addr;
	struct pcnet32_private *lp = FUNC3(dev);
	unsigned long flags;

	FUNC0(&lp->watchdog_timer);

	FUNC5(dev);
	FUNC2(&lp->napi);

	FUNC8(&lp->lock, flags);

	dev->stats.rx_missed_errors = lp->a->read_csr(ioaddr, 112);

	FUNC4(lp, ifdown, KERN_DEBUG, dev,
		     "Shutting down ethercard, status was %2.2x\n",
		     lp->a->read_csr(ioaddr, CSR0));

	/* We stop the PCNET32 here -- it occasionally polls memory if we don't. */
	lp->a->write_csr(ioaddr, CSR0, CSR0_STOP);

	/*
	 * Switch back to 16bit mode to avoid problems with dumb
	 * DOS packet driver after a warm reboot
	 */
	lp->a->write_bcr(ioaddr, 20, 4);

	FUNC9(&lp->lock, flags);

	FUNC1(dev->irq, dev);

	FUNC8(&lp->lock, flags);

	FUNC6(dev);
	FUNC7(dev);

	FUNC9(&lp->lock, flags);

	return 0;
}