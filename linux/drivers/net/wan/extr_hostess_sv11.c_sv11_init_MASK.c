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
struct TYPE_3__ {int ctrlio; int dataio; int txdma; int rxdma; struct net_device* netdevice; struct z8530_dev* dev; struct z8530_dev* private; int /*<<< orphan*/ * irqs; } ;
struct z8530_dev {int active; int irq; scalar_t__ type; TYPE_1__ chanA; TYPE_1__ chanB; } ;
struct net_device {int base_addr; int irq; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  xmit; int /*<<< orphan*/  attach; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ Z85C30 ; 
 struct net_device* FUNC0 (struct z8530_dev*) ; 
 TYPE_2__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int dma ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct z8530_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  hostess_attach ; 
 int /*<<< orphan*/  hostess_ops ; 
 int /*<<< orphan*/  hostess_queue_xmit ; 
 int /*<<< orphan*/  FUNC7 (struct z8530_dev*) ; 
 struct z8530_dev* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 scalar_t__ FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 scalar_t__ FUNC14 (int,char*) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct z8530_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  z8530_dead_port ; 
 int /*<<< orphan*/  FUNC18 (struct z8530_dev*,char*,int) ; 
 int /*<<< orphan*/  z8530_hdlc_kilostream ; 
 int /*<<< orphan*/  z8530_hdlc_kilostream_85230 ; 
 scalar_t__ FUNC19 (struct z8530_dev*) ; 
 int /*<<< orphan*/  z8530_interrupt ; 
 int /*<<< orphan*/  z8530_nop ; 

__attribute__((used)) static struct z8530_dev *FUNC20(int iobase, int irq)
{
	struct z8530_dev *sv;
	struct net_device *netdev;
	/*
	 *	Get the needed I/O space
	 */

	if (!FUNC16(iobase, 8, "Comtrol SV11")) {
		FUNC11("I/O 0x%X already in use\n", iobase);
		return NULL;
	}

	sv = FUNC8(sizeof(struct z8530_dev), GFP_KERNEL);
	if (!sv)
		goto err_kzalloc;

	/*
	 *	Stuff in the I/O addressing
	 */

	sv->active = 0;

	sv->chanA.ctrlio = iobase + 1;
	sv->chanA.dataio = iobase + 3;
	sv->chanB.ctrlio = -1;
	sv->chanB.dataio = -1;
	sv->chanA.irqs = &z8530_nop;
	sv->chanB.irqs = &z8530_nop;

	FUNC9(0, iobase + 4);		/* DMA off */

	/* We want a fast IRQ for this device. Actually we'd like an even faster
	   IRQ ;) - This is one driver RtLinux is made for */

	if (FUNC15(irq, z8530_interrupt, 0,
			"Hostess SV11", sv) < 0) {
		FUNC11("IRQ %d already in use\n", irq);
		goto err_irq;
	}

	sv->irq = irq;
	sv->chanA.private = sv;
	sv->chanA.dev = sv;
	sv->chanB.dev = sv;

	if (dma) {
		/*
		 *	You can have DMA off or 1 and 3 thats the lot
		 *	on the Comtrol.
		 */
		sv->chanA.txdma = 3;
		sv->chanA.rxdma = 1;
		FUNC9(0x03 | 0x08, iobase + 4);		/* DMA on */
		if (FUNC14(sv->chanA.txdma, "Hostess SV/11 (TX)"))
			goto err_txdma;

		if (dma == 1)
			if (FUNC14(sv->chanA.rxdma, "Hostess SV/11 (RX)"))
				goto err_rxdma;
	}

	/* Kill our private IRQ line the hostess can end up chattering
	   until the configuration is set */
	FUNC2(irq);

	/*
	 *	Begin normal initialise
	 */

	if (FUNC19(sv)) {
		FUNC10("Z8530 series device not found\n");
		FUNC3(irq);
		goto free_dma;
	}
	FUNC17(&sv->chanB, z8530_dead_port);
	if (sv->type == Z85C30)
		FUNC17(&sv->chanA, z8530_hdlc_kilostream);
	else
		FUNC17(&sv->chanA, z8530_hdlc_kilostream_85230);

	FUNC3(irq);

	/*
	 *	Now we can take the IRQ
	 */

	sv->chanA.netdevice = netdev = FUNC0(sv);
	if (!netdev)
		goto free_dma;

	FUNC1(netdev)->attach = hostess_attach;
	FUNC1(netdev)->xmit = hostess_queue_xmit;
	netdev->netdev_ops = &hostess_ops;
	netdev->base_addr = iobase;
	netdev->irq = irq;

	if (FUNC12(netdev)) {
		FUNC10("unable to register HDLC device\n");
		FUNC6(netdev);
		goto free_dma;
	}

	FUNC18(sv, "I/O", iobase);
	sv->active = 1;
	return sv;

free_dma:
	if (dma == 1)
		FUNC4(sv->chanA.rxdma);
err_rxdma:
	if (dma)
		FUNC4(sv->chanA.txdma);
err_txdma:
	FUNC5(irq, sv);
err_irq:
	FUNC7(sv);
err_kzalloc:
	FUNC13(iobase, 8);
	return NULL;
}