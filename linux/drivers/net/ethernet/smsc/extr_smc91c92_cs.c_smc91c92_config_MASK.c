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
typedef  int u_long ;
struct TYPE_2__ {int phy_id; } ;
struct smc_private {int manfid; scalar_t__ cardid; int cfg; TYPE_1__ mii_if; scalar_t__ rx_ovrn; scalar_t__ duplex; } ;
struct pcmcia_device {int manf_id; scalar_t__ card_id; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; struct net_device* priv; } ;
struct net_device {int if_port; unsigned int base_addr; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int CFG_16BIT ; 
 int CFG_AUI_SELECT ; 
 int CFG_IRQ_SEL_0 ; 
 int CFG_IRQ_SEL_1 ; 
 int CFG_MII_SELECT ; 
 int CFG_NO_WAIT ; 
 int CFG_STATIC ; 
 scalar_t__ CONFIG ; 
 int ENODEV ; 
#define  MANFID_MEGAHERTZ 133 
#define  MANFID_MOTOROLA 132 
#define  MANFID_NEW_MEDIA 131 
#define  MANFID_OSITECH 130 
#define  MANFID_PSION 129 
#define  MANFID_SMC 128 
 scalar_t__ MEMCFG ; 
 scalar_t__ MEMINFO ; 
 scalar_t__ PRODID_MEGAHERTZ_EM3288 ; 
 scalar_t__ PRODID_MEGAHERTZ_VARIOUS ; 
 scalar_t__ PRODID_OSITECH_SEVEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 char** if_names ; 
 int if_port ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (struct net_device*,int,int) ; 
 int FUNC9 (struct pcmcia_device*) ; 
 int FUNC10 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct pcmcia_device*) ; 
 int FUNC12 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,char*) ; 
 struct smc_private* FUNC16 (struct net_device*) ; 
 int FUNC17 (struct pcmcia_device*) ; 
 int FUNC18 (struct pcmcia_device*,int,scalar_t__) ; 
 int FUNC19 (struct pcmcia_device*) ; 
 int FUNC20 (struct pcmcia_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 scalar_t__ FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct pcmcia_device*) ; 
 int FUNC24 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  smc_interrupt ; 
 int FUNC25 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct net_device*) ; 

__attribute__((used)) static int FUNC27(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    struct smc_private *smc = FUNC16(dev);
    char *name;
    int i, rev, j = 0;
    unsigned int ioaddr;
    u_long mir;

    FUNC3(&link->dev, "smc91c92_config\n");

    smc->manfid = link->manf_id;
    smc->cardid = link->card_id;

    if ((smc->manfid == MANFID_OSITECH) &&
	(smc->cardid != PRODID_OSITECH_SEVEN)) {
	i = FUNC17(link);
    } else if ((smc->manfid == MANFID_MOTOROLA) ||
	       ((smc->manfid == MANFID_MEGAHERTZ) &&
		((smc->cardid == PRODID_MEGAHERTZ_VARIOUS) ||
		 (smc->cardid == PRODID_MEGAHERTZ_EM3288)))) {
	i = FUNC9(link);
    } else {
	i = FUNC24(link);
    }
    if (i)
	    goto config_failed;

    i = FUNC20(link, smc_interrupt);
    if (i)
	    goto config_failed;
    i = FUNC19(link);
    if (i)
	    goto config_failed;

    if (smc->manfid == MANFID_MOTOROLA)
	FUNC11(link);

    dev->irq = link->irq;

    if ((if_port >= 0) && (if_port <= 2))
	dev->if_port = if_port;
    else
	FUNC5(&link->dev, "invalid if_port requested\n");

    switch (smc->manfid) {
    case MANFID_OSITECH:
    case MANFID_PSION:
	i = FUNC18(link, smc->manfid, smc->cardid); break;
    case MANFID_SMC:
    case MANFID_NEW_MEDIA:
	i = FUNC25(link); break;
    case 0x128: /* For broken Megahertz cards */
    case MANFID_MEGAHERTZ:
	i = FUNC10(link); break;
    case MANFID_MOTOROLA:
    default: /* get the hw address from EEPROM */
	i = FUNC12(link); break;
    }

    if (i != 0) {
	FUNC5(&link->dev, "Unable to find hardware address.\n");
	goto config_failed;
    }

    smc->duplex = 0;
    smc->rx_ovrn = 0;

    rev = FUNC2(link);
    name = "???";
    if (rev > 0)
	switch (rev >> 4) {
	case 3: name = "92"; break;
	case 4: name = ((rev & 15) >= 6) ? "96" : "94"; break;
	case 5: name = "95"; break;
	case 7: name = "100"; break;
	case 8: name = "100-FD"; break;
	case 9: name = "110"; break;
	}

    ioaddr = dev->base_addr;
    if (rev > 0) {
	u_long mcr;
	FUNC1(0);
	mir = FUNC7(ioaddr + MEMINFO) & 0xff;
	if (mir == 0xff) mir++;
	/* Get scale factor for memory size */
	mcr = ((rev >> 4) > 3) ? FUNC7(ioaddr + MEMCFG) : 0x0200;
	mir *= 128 * (1<<((mcr >> 9) & 7));
	FUNC1(1);
	smc->cfg = FUNC7(ioaddr + CONFIG) & ~CFG_AUI_SELECT;
	smc->cfg |= CFG_NO_WAIT | CFG_16BIT | CFG_STATIC;
	if (smc->manfid == MANFID_OSITECH)
	    smc->cfg |= CFG_IRQ_SEL_1 | CFG_IRQ_SEL_0;
	if ((rev >> 4) >= 7)
	    smc->cfg |= CFG_MII_SELECT;
    } else
	mir = 0;

    if (smc->cfg & CFG_MII_SELECT) {
	FUNC1(3);

	for (i = 0; i < 32; i++) {
	    j = FUNC8(dev, i, 1);
	    if ((j != 0) && (j != 0xffff)) break;
	}
	smc->mii_if.phy_id = (i < 32) ? i : -1;

	FUNC1(0);
    }

    FUNC0(dev, &link->dev);

    if (FUNC22(dev) != 0) {
	FUNC4(&link->dev, "register_netdev() failed\n");
	goto config_undo;
    }

    FUNC14(dev, "smc91c%s rev %d: io %#3lx, irq %d, hw_addr %pM\n",
		name, (rev & 0x0f), dev->base_addr, dev->irq, dev->dev_addr);

    if (rev > 0) {
	if (mir & 0x3ff)
	    FUNC14(dev, "  %lu byte", mir);
	else
	    FUNC14(dev, "  %lu kb", mir>>10);
	FUNC21(" buffer, %s xcvr\n",
		(smc->cfg & CFG_MII_SELECT) ? "MII" : if_names[dev->if_port]);
    }

    if (smc->cfg & CFG_MII_SELECT) {
	if (smc->mii_if.phy_id != -1) {
	    FUNC13(dev, "  MII transceiver at index %d, status %x\n",
		       smc->mii_if.phy_id, j);
	} else {
	    FUNC15(dev, "  No MII transceivers found!\n");
	}
    }
    return 0;

config_undo:
    FUNC26(dev);
config_failed:
    FUNC23(link);
    FUNC6(dev);
    return -ENODEV;
}