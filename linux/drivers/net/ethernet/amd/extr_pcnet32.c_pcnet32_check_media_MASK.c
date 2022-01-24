#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
typedef  int u32 ;
struct TYPE_5__ {int full_duplex; } ;
struct pcnet32_private {scalar_t__ chip_version; int phycount; TYPE_1__* a; TYPE_2__ mii_if; scalar_t__ mii; scalar_t__ port_tp; int /*<<< orphan*/  autoneg; } ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct ethtool_cmd {scalar_t__ duplex; int /*<<< orphan*/  cmd; } ;
struct TYPE_4__ {int (* read_bcr ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* write_bcr ) (int /*<<< orphan*/ ,int,int) ;} ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  ETHTOOL_GSET ; 
 scalar_t__ PCNET32_79C970A ; 
 int /*<<< orphan*/  FUNC0 (struct ethtool_cmd*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct ethtool_cmd*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ,char*) ; 
 struct pcnet32_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct pcnet32_private*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 scalar_t__ FUNC9 (struct pcnet32_private*) ; 
 int FUNC10 (struct net_device*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC15(struct net_device *dev, int verbose)
{
	struct pcnet32_private *lp = FUNC4(dev);
	int curr_link;
	int prev_link = FUNC6(dev) ? 1 : 0;
	u32 bcr9;

	if (lp->mii) {
		curr_link = FUNC2(&lp->mii_if);
	} else if (lp->chip_version == PCNET32_79C970A) {
		ulong ioaddr = dev->base_addr;	/* card base I/O address */
		/* only read link if port is set to TP */
		if (!lp->autoneg && lp->port_tp)
			curr_link = (lp->a->read_bcr(ioaddr, 4) != 0xc0);
		else /* link always up for AUI port or port auto select */
			curr_link = 1;
	} else {
		ulong ioaddr = dev->base_addr;	/* card base I/O address */
		curr_link = (lp->a->read_bcr(ioaddr, 4) != 0xc0);
	}
	if (!curr_link) {
		if (prev_link || verbose) {
			FUNC5(dev);
			FUNC8(lp, link, dev, "link down\n");
		}
		if (lp->phycount > 1) {
			curr_link = FUNC10(dev);
			prev_link = 0;
		}
	} else if (verbose || !prev_link) {
		FUNC7(dev);
		if (lp->mii) {
			if (FUNC9(lp)) {
				struct ethtool_cmd ecmd = {
					.cmd = ETHTOOL_GSET };
				FUNC1(&lp->mii_if, &ecmd);
				FUNC3(dev, "link up, %uMbps, %s-duplex\n",
					    FUNC0(&ecmd),
					    (ecmd.duplex == DUPLEX_FULL)
					    ? "full" : "half");
			}
			bcr9 = lp->a->read_bcr(dev->base_addr, 9);
			if ((bcr9 & (1 << 0)) != lp->mii_if.full_duplex) {
				if (lp->mii_if.full_duplex)
					bcr9 |= (1 << 0);
				else
					bcr9 &= ~(1 << 0);
				lp->a->write_bcr(dev->base_addr, 9, bcr9);
			}
		} else {
			FUNC8(lp, link, dev, "link up\n");
		}
	}
}