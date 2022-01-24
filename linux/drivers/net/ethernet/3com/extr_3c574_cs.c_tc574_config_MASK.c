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
typedef  int u_char ;
typedef  int /*<<< orphan*/  u8 ;
struct pcmcia_device {int io_lines; char** prod_id; int /*<<< orphan*/  dev; TYPE_1__** resource; int /*<<< orphan*/  irq; struct net_device* priv; } ;
struct net_device {unsigned int base_addr; scalar_t__ dev_addr; int /*<<< orphan*/  irq; } ;
struct el3_private {int default_media; int autoselect; int phys; int advertising; int /*<<< orphan*/  media; } ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int start; } ;

/* Variables and functions */
 int Autoselect ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int Ram_size ; 
 int Ram_split ; 
 int Ram_split_shift ; 
 scalar_t__ RunnerRdCtrl ; 
 int /*<<< orphan*/  RxReset ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TxReset ; 
 scalar_t__ Wn3_Config ; 
 scalar_t__ Wn3_Options ; 
 int Xcvr ; 
 int Xcvr_shift ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  el3_interrupt ; 
 scalar_t__ full_duplex ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,int,int,int) ; 
 int /*<<< orphan*/  media_check ; 
 int mii_preamble_required ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,char*,...) ; 
 struct el3_private* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 
 int FUNC15 (struct pcmcia_device*) ; 
 size_t FUNC16 (struct pcmcia_device*,int,int /*<<< orphan*/ **) ; 
 int FUNC17 (struct pcmcia_device*) ; 
 int FUNC18 (struct pcmcia_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/ * ram_split ; 
 int FUNC21 (unsigned int,int) ; 
 scalar_t__ FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct pcmcia_device *link)
{
	struct net_device *dev = link->priv;
	struct el3_private *lp = FUNC13(dev);
	int ret, i, j;
	unsigned int ioaddr;
	__be16 *phys_addr;
	char *cardname;
	__u32 config;
	u8 *buf;
	size_t len;

	phys_addr = (__be16 *)dev->dev_addr;

	FUNC2(&link->dev, "3c574_config()\n");

	link->io_lines = 16;

	for (i = j = 0; j < 0x400; j += 0x20) {
		link->resource[0]->start = j ^ 0x300;
		i = FUNC17(link);
		if (i == 0)
			break;
	}
	if (i != 0)
		goto failed;

	ret = FUNC18(link, el3_interrupt);
	if (ret)
		goto failed;

	ret = FUNC15(link);
	if (ret)
		goto failed;

	dev->irq = link->irq;
	dev->base_addr = link->resource[0]->start;

	ioaddr = dev->base_addr;

	/* The 3c574 normally uses an EEPROM for configuration info, including
	   the hardware address.  The future products may include a modem chip
	   and put the address in the CIS. */

	len = FUNC16(link, 0x88, &buf);
	if (buf && len >= 6) {
		for (i = 0; i < 3; i++)
			phys_addr[i] = FUNC3(FUNC7(buf[i * 2]));
		FUNC6(buf);
	} else {
		FUNC6(buf); /* 0 < len < 6 */
		FUNC0(0);
		for (i = 0; i < 3; i++)
			phys_addr[i] = FUNC3(FUNC21(ioaddr, i + 10));
		if (phys_addr[0] == FUNC3(0x6060)) {
			FUNC20("IO port conflict at 0x%03lx-0x%03lx\n",
				  dev->base_addr, dev->base_addr+15);
			goto failed;
		}
	}
	if (link->prod_id[1])
		cardname = link->prod_id[1];
	else
		cardname = "3Com 3c574";

	{
		u_char mcr;
		FUNC14(2<<11, ioaddr + RunnerRdCtrl);
		mcr = FUNC4(ioaddr + 2);
		FUNC14(0<<11, ioaddr + RunnerRdCtrl);
		FUNC19("  ASIC rev %d,", mcr>>3);
		FUNC0(3);
		config = FUNC5(ioaddr + Wn3_Config);
		lp->default_media = (config & Xcvr) >> Xcvr_shift;
		lp->autoselect = config & Autoselect ? 1 : 0;
	}

	FUNC25(&lp->media, media_check, 0);

	{
		int phy;
		
		/* Roadrunner only: Turn on the MII transceiver */
		FUNC14(0x8040, ioaddr + Wn3_Options);
		FUNC8(1);
		FUNC14(0xc040, ioaddr + Wn3_Options);
		FUNC24(dev, TxReset);
		FUNC24(dev, RxReset);
		FUNC8(1);
		FUNC14(0x8040, ioaddr + Wn3_Options);
		
		FUNC0(4);
		for (phy = 1; phy <= 32; phy++) {
			int mii_status;
			FUNC10(ioaddr, 32);
			mii_status = FUNC9(ioaddr, phy & 0x1f, 1);
			if (mii_status != 0xffff) {
				lp->phys = phy & 0x1f;
				FUNC2(&link->dev, "  MII transceiver at "
					"index %d, status %x.\n",
					  phy, mii_status);
				if ((mii_status & 0x0040) == 0)
					mii_preamble_required = 1;
				break;
			}
		}
		if (phy > 32) {
			FUNC20("  No MII transceivers found!\n");
			goto failed;
		}
		i = FUNC9(ioaddr, lp->phys, 16) | 0x40;
		FUNC11(ioaddr, lp->phys, 16, i);
		lp->advertising = FUNC9(ioaddr, lp->phys, 4);
		if (full_duplex) {
			/* Only advertise the FD media types. */
			lp->advertising &= ~0x02a0;
			FUNC11(ioaddr, lp->phys, 4, lp->advertising);
		}
	}

	FUNC1(dev, &link->dev);

	if (FUNC22(dev) != 0) {
		FUNC20("register_netdev() failed\n");
		goto failed;
	}

	FUNC12(dev, "%s at io %#3lx, irq %d, hw_addr %pM\n",
		    cardname, dev->base_addr, dev->irq, dev->dev_addr);
	FUNC12(dev, " %dK FIFO split %s Rx:Tx, %sMII interface.\n",
		    8 << (config & Ram_size),
		    ram_split[(config & Ram_split) >> Ram_split_shift],
		    config & Autoselect ? "autoselect " : "");

	return 0;

failed:
	FUNC23(link);
	return -ENODEV;

}