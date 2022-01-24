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
struct pcnet32_private {int options; int /*<<< orphan*/  lock; TYPE_2__* a; TYPE_1__* init_block; } ;
struct net_device {unsigned long base_addr; int flags; } ;
struct TYPE_4__ {int (* read_csr ) (unsigned long,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_csr ) (unsigned long,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_3__ {void* mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR0 ; 
 int /*<<< orphan*/  CSR0_NORMAL ; 
 int CSR0_STOP ; 
 int /*<<< orphan*/  CSR15 ; 
 int IFF_PROMISC ; 
 int PCNET32_PORT_PORTSEL ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  hw ; 
 struct pcnet32_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcnet32_private*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcnet32_private*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net_device*,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC14(struct net_device *dev)
{
	unsigned long ioaddr = dev->base_addr, flags;
	struct pcnet32_private *lp = FUNC1(dev);
	int csr15, suspended;

	FUNC8(&lp->lock, flags);
	suspended = FUNC7(dev, &flags, 0);
	csr15 = lp->a->read_csr(ioaddr, CSR15);
	if (dev->flags & IFF_PROMISC) {
		/* Log any net taps. */
		FUNC2(lp, hw, dev, "Promiscuous mode enabled\n");
		lp->init_block->mode =
		    FUNC0(0x8000 | (lp->options & PCNET32_PORT_PORTSEL) <<
				7);
		lp->a->write_csr(ioaddr, CSR15, csr15 | 0x8000);
	} else {
		lp->init_block->mode =
		    FUNC0((lp->options & PCNET32_PORT_PORTSEL) << 7);
		lp->a->write_csr(ioaddr, CSR15, csr15 & 0x7fff);
		FUNC5(dev);
	}

	if (suspended) {
		FUNC4(lp, ioaddr);
	} else {
		lp->a->write_csr(ioaddr, CSR0, CSR0_STOP);
		FUNC6(dev, CSR0_NORMAL);
		FUNC3(dev);
	}

	FUNC9(&lp->lock, flags);
}