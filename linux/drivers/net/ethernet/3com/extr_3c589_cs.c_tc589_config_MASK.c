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
typedef  int /*<<< orphan*/  u8 ;
struct pcmcia_device {scalar_t__ manf_id; scalar_t__ card_id; int io_lines; int /*<<< orphan*/  dev; TYPE_1__** resource; int /*<<< orphan*/  irq; struct net_device* priv; } ;
struct net_device {unsigned int base_addr; int if_port; scalar_t__ dev_addr; int /*<<< orphan*/  irq; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 scalar_t__ MANFID_3COM ; 
 scalar_t__ PRODID_3COM_3C562 ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  el3_interrupt ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * if_names ; 
 int if_port ; 
 int FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int,unsigned int) ; 
 int FUNC11 (struct pcmcia_device*) ; 
 size_t FUNC12 (struct pcmcia_device*,int,int /*<<< orphan*/ **) ; 
 int FUNC13 (struct pcmcia_device*) ; 
 int FUNC14 (struct pcmcia_device*,int /*<<< orphan*/ ) ; 
 int FUNC15 (unsigned int,int) ; 
 scalar_t__ FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct pcmcia_device*) ; 

__attribute__((used)) static int FUNC18(struct pcmcia_device *link)
{
	struct net_device *dev = link->priv;
	__be16 *phys_addr;
	int ret, i, j, multi = 0, fifo;
	unsigned int ioaddr;
	static const char * const ram_split[] = {"5:3", "3:1", "1:1", "3:5"};
	u8 *buf;
	size_t len;

	FUNC2(&link->dev, "3c589_config\n");

	phys_addr = (__be16 *)dev->dev_addr;
	/* Is this a 3c562? */
	if (link->manf_id != MANFID_3COM)
		FUNC4(&link->dev, "hmmm, is this really a 3Com card??\n");
	multi = (link->card_id == PRODID_3COM_3C562);

	link->io_lines = 16;

	/* For the 3c562, the base address must be xx00-xx7f */
	for (i = j = 0; j < 0x400; j += 0x10) {
		if (multi && (j & 0x80))
			continue;
		link->resource[0]->start = j ^ 0x300;
		i = FUNC13(link);
		if (i == 0)
			break;
	}
	if (i != 0)
		goto failed;

	ret = FUNC14(link, el3_interrupt);
	if (ret)
		goto failed;

	ret = FUNC11(link);
	if (ret)
		goto failed;

	dev->irq = link->irq;
	dev->base_addr = link->resource[0]->start;
	ioaddr = dev->base_addr;
	FUNC0(0);

	/* The 3c589 has an extra EEPROM for configuration info, including
	 * the hardware address.  The 3c562 puts the address in the CIS.
	 */
	len = FUNC12(link, 0x88, &buf);
	if (buf && len >= 6) {
		for (i = 0; i < 3; i++)
			phys_addr[i] = FUNC5(FUNC8(buf[i*2]));
		FUNC7(buf);
	} else {
		FUNC7(buf); /* 0 < len < 6 */
		for (i = 0; i < 3; i++)
			phys_addr[i] = FUNC5(FUNC15(ioaddr, i));
		if (phys_addr[0] == FUNC5(0x6060)) {
			FUNC3(&link->dev, "IO port conflict at 0x%03lx-0x%03lx\n",
					dev->base_addr, dev->base_addr+15);
			goto failed;
		}
	}

	/* The address and resource configuration register aren't loaded from
	 * the EEPROM and *must* be set to 0 and IRQ3 for the PCMCIA version.
	 */

	FUNC10(0x3f00, ioaddr + 8);
	fifo = FUNC6(ioaddr);

	/* The if_port symbol can be set when the module is loaded */
	if ((if_port >= 0) && (if_port <= 3))
		dev->if_port = if_port;
	else
		FUNC3(&link->dev, "invalid if_port requested\n");

	FUNC1(dev, &link->dev);

	if (FUNC16(dev) != 0) {
		FUNC3(&link->dev, "register_netdev() failed\n");
		goto failed;
	}

	FUNC9(dev, "3Com 3c%s, io %#3lx, irq %d, hw_addr %pM\n",
			(multi ? "562" : "589"), dev->base_addr, dev->irq,
			dev->dev_addr);
	FUNC9(dev, "  %dK FIFO split %s Rx:Tx, %s xcvr\n",
			(fifo & 7) ? 32 : 8, ram_split[(fifo >> 16) & 3],
			if_names[dev->if_port]);
	return 0;

failed:
	FUNC17(link);
	return -ENODEV;
}