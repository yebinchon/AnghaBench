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
struct pcmcia_device {int io_lines; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; TYPE_1__** resource; struct com20020_dev* priv; } ;
struct net_device {int base_addr; int /*<<< orphan*/  irq; } ;
struct com20020_dev {struct net_device* dev; } ;
struct arcnet_local {char* card_name; int /*<<< orphan*/  card_flags; } ;
struct TYPE_2__ {int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_CAN_10MBIT ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int,int /*<<< orphan*/ ) ; 
 struct arcnet_local* FUNC7 (struct net_device*) ; 
 int FUNC8 (struct pcmcia_device*) ; 
 int FUNC9 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct pcmcia_device *link)
{
	struct arcnet_local *lp;
	struct com20020_dev *info;
	struct net_device *dev;
	int i, ret;
	int ioaddr;

	info = link->priv;
	dev = info->dev;

	FUNC4(&link->dev, "config...\n");

	FUNC4(&link->dev, "com20020_config\n");

	FUNC4(&link->dev, "baseport1 is %Xh\n",
		(unsigned int)link->resource[0]->start);

	i = -ENODEV;
	link->io_lines = 16;

	if (!link->resource[0]->start) {
		for (ioaddr = 0x100; ioaddr < 0x400; ioaddr += 0x10) {
			link->resource[0]->start = ioaddr;
			i = FUNC9(link);
			if (i == 0)
				break;
		}
	} else {
		i = FUNC9(link);
	}

	if (i != 0) {
		FUNC4(&link->dev, "requestIO failed totally!\n");
		goto failed;
	}

	ioaddr = dev->base_addr = link->resource[0]->start;
	FUNC4(&link->dev, "got ioaddr %Xh\n", ioaddr);

	FUNC4(&link->dev, "request IRQ %d\n",
		link->irq);
	if (!link->irq) {
		FUNC4(&link->dev, "requestIRQ failed totally!\n");
		goto failed;
	}

	dev->irq = link->irq;

	ret = FUNC8(link);
	if (ret)
		goto failed;

	if (FUNC1(dev)) {
		FUNC10(dev);
		goto failed;
	}

	lp = FUNC7(dev);
	lp->card_name = "PCMCIA COM20020";
	lp->card_flags = ARC_CAN_10MBIT; /* pretend all of them can 10Mbit */

	FUNC0(dev, &link->dev);

	i = FUNC2(dev, 0);	/* calls register_netdev */

	if (i != 0) {
		FUNC5(&link->dev,
			   "com20020_found() failed\n");
		goto failed;
	}

	FUNC6(dev, "port %#3lx, irq %d\n",
		   dev->base_addr, dev->irq);
	return 0;

failed:
	FUNC4(&link->dev, "com20020_config failed...\n");
	FUNC3(link);
	return -ENODEV;
}