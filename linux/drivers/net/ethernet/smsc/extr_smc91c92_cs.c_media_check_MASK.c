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
typedef  int u_short ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {void* expires; } ;
struct TYPE_3__ {int phy_id; struct net_device* dev; } ;
struct smc_private {int fast_poll; int cfg; int link_status; int duplex; int media_status; int /*<<< orphan*/  lock; TYPE_2__ media; scalar_t__ tx_err; scalar_t__ last_rx; TYPE_1__ mii_if; int /*<<< orphan*/  watchdog; scalar_t__ rx_ovrn; } ;
struct net_device {unsigned int base_addr; scalar_t__ if_port; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ BANK_SELECT ; 
 int CFG_AUI_SELECT ; 
 int CFG_MII_SELECT ; 
 scalar_t__ CONFIG ; 
 scalar_t__ EPH ; 
 int EPH_16COL ; 
 int EPH_LINK_OK ; 
 int HZ ; 
 scalar_t__ INTERRUPT ; 
 int MC_RESET ; 
 scalar_t__ MMU_CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TCR ; 
 int TCR_FDUPLX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct smc_private* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int FUNC6 (struct net_device*,int,int) ; 
 int media ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 
 struct smc_private* smc ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC14 (void*,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct timer_list *t)
{
    struct smc_private *smc = FUNC2(smc, t, media);
    struct net_device *dev = smc->mii_if.dev;
    unsigned int ioaddr = dev->base_addr;
    u_short i, media, saved_bank;
    u_short link;
    unsigned long flags;

    FUNC12(&smc->lock, flags);

    saved_bank = FUNC3(ioaddr + BANK_SELECT);

    if (!FUNC8(dev))
	goto reschedule;

    FUNC0(2);

    /* need MC_RESET to keep the memory consistent. errata? */
    if (smc->rx_ovrn) {
	FUNC9(MC_RESET, ioaddr + MMU_CMD);
	smc->rx_ovrn = 0;
    }
    i = FUNC3(ioaddr + INTERRUPT);
    FUNC0(0);
    media = FUNC3(ioaddr + EPH) & EPH_LINK_OK;
    FUNC0(1);
    media |= (FUNC3(ioaddr + CONFIG) & CFG_AUI_SELECT) ? 2 : 1;

    FUNC0(saved_bank);
    FUNC13(&smc->lock, flags);

    /* Check for pending interrupt with watchdog flag set: with
       this, we can limp along even if the interrupt is blocked */
    if (smc->watchdog++ && ((i>>8) & i)) {
	if (!smc->fast_poll)
	    FUNC7(dev, "interrupt(s) dropped!\n");
	FUNC5(flags);
	FUNC10(dev->irq, dev);
	FUNC4(flags);
	smc->fast_poll = HZ;
    }
    if (smc->fast_poll) {
	smc->fast_poll--;
	smc->media.expires = jiffies + HZ/100;
	FUNC1(&smc->media);
	return;
    }

    FUNC12(&smc->lock, flags);

    saved_bank = FUNC3(ioaddr + BANK_SELECT);

    if (smc->cfg & CFG_MII_SELECT) {
	if (smc->mii_if.phy_id < 0)
	    goto reschedule;

	FUNC0(3);
	link = FUNC6(dev, smc->mii_if.phy_id, 1);
	if (!link || (link == 0xffff)) {
	    FUNC7(dev, "MII is missing!\n");
	    smc->mii_if.phy_id = -1;
	    goto reschedule;
	}

	link &= 0x0004;
	if (link != smc->link_status) {
	    u_short p = FUNC6(dev, smc->mii_if.phy_id, 5);
	    FUNC7(dev, "%s link beat\n", link ? "found" : "lost");
	    smc->duplex = (((p & 0x0100) || ((p & 0x1c0) == 0x40))
			   ? TCR_FDUPLX : 0);
	    if (link) {
		FUNC7(dev, "autonegotiation complete: "
			    "%dbaseT-%cD selected\n",
			    (p & 0x0180) ? 100 : 10, smc->duplex ? 'F' : 'H');
	    }
	    FUNC0(0);
	    FUNC9(FUNC3(ioaddr + TCR) | smc->duplex, ioaddr + TCR);
	    smc->link_status = link;
	}
	goto reschedule;
    }

    /* Ignore collisions unless we've had no rx's recently */
    if (FUNC14(jiffies, smc->last_rx + HZ)) {
	if (smc->tx_err || (smc->media_status & EPH_16COL))
	    media |= EPH_16COL;
    }
    smc->tx_err = 0;

    if (media != smc->media_status) {
	if ((media & smc->media_status & 1) &&
	    ((smc->media_status ^ media) & EPH_LINK_OK))
	    FUNC7(dev, "%s link beat\n",
			smc->media_status & EPH_LINK_OK ? "lost" : "found");
	else if ((media & smc->media_status & 2) &&
		 ((smc->media_status ^ media) & EPH_16COL))
	    FUNC7(dev, "coax cable %s\n",
			media & EPH_16COL ? "problem" : "ok");
	if (dev->if_port == 0) {
	    if (media & 1) {
		if (media & EPH_LINK_OK)
		    FUNC7(dev, "flipped to 10baseT\n");
		else
		    FUNC11(dev, 2);
	    } else {
		if (media & EPH_16COL)
		    FUNC11(dev, 1);
		else
		    FUNC7(dev, "flipped to 10base2\n");
	    }
	}
	smc->media_status = media;
    }

reschedule:
    smc->media.expires = jiffies + HZ;
    FUNC1(&smc->media);
    FUNC0(saved_bank);
    FUNC13(&smc->lock, flags);
}