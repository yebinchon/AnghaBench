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
struct net_device {int base_addr; int* dev_addr; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  close; int /*<<< orphan*/  copy_from_card; int /*<<< orphan*/  copy_to_card; int /*<<< orphan*/  reset; int /*<<< orphan*/  intmask; int /*<<< orphan*/  status; int /*<<< orphan*/  command; int /*<<< orphan*/  owner; } ;
struct arcnet_local {int setup; int card_flags; int setup2; int config; int timeout; int backplane; int /*<<< orphan*/  card_name; TYPE_1__ hw; } ;

/* Variables and functions */
 int ARC_CAN_10MBIT ; 
 int /*<<< orphan*/  COM20020_REG_W_COMMAND ; 
 int /*<<< orphan*/  COM20020_REG_W_CONFIG ; 
 int /*<<< orphan*/  COM20020_REG_W_XREG ; 
 int /*<<< orphan*/  D_NORMAL ; 
 int EIO ; 
 int ENODEV ; 
 int STARTIOcmd ; 
 int SUB_NODE ; 
 int /*<<< orphan*/  SUB_SETUP1 ; 
 int /*<<< orphan*/  SUB_SETUP2 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  arcnet_interrupt ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * clockrates ; 
 int /*<<< orphan*/  com20020_close ; 
 int /*<<< orphan*/  com20020_command ; 
 int /*<<< orphan*/  com20020_copy_from_card ; 
 int /*<<< orphan*/  com20020_copy_to_card ; 
 int /*<<< orphan*/  com20020_reset ; 
 int /*<<< orphan*/  FUNC3 (struct arcnet_local*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  com20020_setmask ; 
 int /*<<< orphan*/  com20020_status ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct arcnet_local* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct net_device*) ; 

int FUNC9(struct net_device *dev, int shared)
{
	struct arcnet_local *lp;
	int ioaddr = dev->base_addr;

	/* Initialize the rest of the device structure. */

	lp = FUNC6(dev);

	lp->hw.owner = THIS_MODULE;
	lp->hw.command = com20020_command;
	lp->hw.status = com20020_status;
	lp->hw.intmask = com20020_setmask;
	lp->hw.reset = com20020_reset;
	lp->hw.copy_to_card = com20020_copy_to_card;
	lp->hw.copy_from_card = com20020_copy_from_card;
	lp->hw.close = com20020_close;

	/* FIXME: do this some other way! */
	if (!dev->dev_addr[0])
		dev->dev_addr[0] = FUNC1(ioaddr, 8);

	FUNC3(lp, ioaddr, SUB_SETUP1);
	FUNC2(lp->setup, ioaddr, COM20020_REG_W_XREG);

	if (lp->card_flags & ARC_CAN_10MBIT) {
		FUNC3(lp, ioaddr, SUB_SETUP2);
		FUNC2(lp->setup2, ioaddr, COM20020_REG_W_XREG);

		/* must now write the magic "restart operation" command */
		FUNC5(1);
		FUNC2(STARTIOcmd, ioaddr, COM20020_REG_W_COMMAND);
	}

	lp->config = (lp->timeout << 3) | (lp->backplane << 2) | SUB_NODE;
	/* Default 0x38 + register: Node ID */
	FUNC2(lp->config, ioaddr, COM20020_REG_W_CONFIG);
	FUNC2(dev->dev_addr[0], ioaddr, COM20020_REG_W_XREG);

	/* reserve the irq */
	if (FUNC8(dev->irq, arcnet_interrupt, shared,
			"arcnet (COM20020)", dev)) {
		FUNC0(D_NORMAL, dev, "Can't get IRQ %d!\n", dev->irq);
		return -ENODEV;
	}

	FUNC0(D_NORMAL, dev, "%s: station %02Xh found at %03lXh, IRQ %d.\n",
		   lp->card_name, dev->dev_addr[0], dev->base_addr, dev->irq);

	if (lp->backplane)
		FUNC0(D_NORMAL, dev, "Using backplane mode.\n");

	if (lp->timeout != 3)
		FUNC0(D_NORMAL, dev, "Using extended timeout value of %d\n",
			   lp->timeout);

	FUNC0(D_NORMAL, dev, "Using CKP %d - data rate %s\n",
		   lp->setup >> 1,
		   clockrates[3 -
			      ((lp->setup2 & 0xF0) >> 4) +
			      ((lp->setup & 0x0F) >> 1)]);
			/* The clockrates array index looks very fragile.
			 * It seems like it could have negative indexing.
			 */

	if (FUNC7(dev)) {
		FUNC4(dev->irq, dev);
		return -EIO;
	}
	return 0;
}