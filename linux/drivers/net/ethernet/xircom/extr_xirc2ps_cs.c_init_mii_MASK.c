#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {unsigned int base_addr; int if_port; } ;
struct local_info {int new_mii; scalar_t__ probe_port; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MediaSelect ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XIRCREG_ESR ; 
 int if_port ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 struct local_info* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(struct net_device *dev)
{
    struct local_info *local = FUNC7(dev);
    unsigned int ioaddr = dev->base_addr;
    unsigned control, status, linkpartner;
    int i;

    if (if_port == 4 || if_port == 1) { /* force 100BaseT or 10BaseT */
	dev->if_port = if_port;
	local->probe_port = 0;
	return 1;
    }

    status = FUNC2(ioaddr,  0, 1);
    if ((status & 0xff00) != 0x7800)
	return 0; /* No MII */

    local->new_mii = (FUNC2(ioaddr, 0, 2) != 0xffff);
    
    if (local->probe_port)
	control = 0x1000; /* auto neg */
    else if (dev->if_port == 4)
	control = 0x2000; /* no auto neg, 100mbs mode */
    else
	control = 0x0000; /* no auto neg, 10mbs mode */
    FUNC3(ioaddr,  0, 0, control, 16);
    FUNC8(100);
    control = FUNC2(ioaddr, 0, 0);

    if (control & 0x0400) {
	FUNC6(dev, "can't take PHY out of isolation mode\n");
	local->probe_port = 0;
	return 0;
    }

    if (local->probe_port) {
	/* according to the DP83840A specs the auto negotiation process
	 * may take up to 3.5 sec, so we use this also for our ML6692
	 * Fixme: Better to use a timer here!
	 */
	for (i=0; i < 35; i++) {
	    FUNC4(100);	 /* wait 100 msec */
	    status = FUNC2(ioaddr,  0, 1);
	    if ((status & 0x0020) && (status & 0x0004))
		break;
	}

	if (!(status & 0x0020)) {
	    FUNC5(dev, "autonegotiation failed; using 10mbs\n");
	    if (!local->new_mii) {
		control = 0x0000;
		FUNC3(ioaddr,  0, 0, control, 16);
		FUNC8(100);
		FUNC1(0);
		dev->if_port = (FUNC0(XIRCREG_ESR) & MediaSelect) ? 1 : 2;
	    }
	} else {
	    linkpartner = FUNC2(ioaddr, 0, 5);
	    FUNC5(dev, "MII link partner: %04x\n", linkpartner);
	    if (linkpartner & 0x0080) {
		dev->if_port = 4;
	    } else
		dev->if_port = 1;
	}
    }

    return 1;
}