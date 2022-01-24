#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
struct pcnet32_private {scalar_t__ chip_version; int autoneg; int port_tp; int fdx; int /*<<< orphan*/  lock; TYPE_3__* a; TYPE_1__* init_block; int /*<<< orphan*/  mii_if; scalar_t__ mii; } ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct TYPE_5__ {scalar_t__ autoneg; scalar_t__ port; scalar_t__ duplex; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct TYPE_6__ {int (* read_bcr ) (int /*<<< orphan*/ ,int) ;int (* read_csr ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_bcr ) (int /*<<< orphan*/ ,int,int) ;int /*<<< orphan*/  (* write_csr ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  CSR0 ; 
 int /*<<< orphan*/  CSR0_NORMAL ; 
 int CSR0_STOP ; 
 int /*<<< orphan*/  CSR15 ; 
 scalar_t__ DUPLEX_FULL ; 
 int EOPNOTSUPP ; 
 scalar_t__ PCNET32_79C970A ; 
 scalar_t__ PORT_TP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ethtool_link_ksettings const*) ; 
 struct pcnet32_private* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcnet32_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_device*,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC17(struct net_device *dev,
				      const struct ethtool_link_ksettings *cmd)
{
	struct pcnet32_private *lp = FUNC2(dev);
	ulong ioaddr = dev->base_addr;
	unsigned long flags;
	int r = -EOPNOTSUPP;
	int suspended, bcr2, bcr9, csr15;

	FUNC7(&lp->lock, flags);
	if (lp->mii) {
		r = FUNC1(&lp->mii_if, cmd);
	} else if (lp->chip_version == PCNET32_79C970A) {
		suspended = FUNC6(dev, &flags, 0);
		if (!suspended)
			lp->a->write_csr(ioaddr, CSR0, CSR0_STOP);

		lp->autoneg = cmd->base.autoneg == AUTONEG_ENABLE;
		bcr2 = lp->a->read_bcr(ioaddr, 2);
		if (cmd->base.autoneg == AUTONEG_ENABLE) {
			lp->a->write_bcr(ioaddr, 2, bcr2 | 0x0002);
		} else {
			lp->a->write_bcr(ioaddr, 2, bcr2 & ~0x0002);

			lp->port_tp = cmd->base.port == PORT_TP;
			csr15 = lp->a->read_csr(ioaddr, CSR15) & ~0x0180;
			if (cmd->base.port == PORT_TP)
				csr15 |= 0x0080;
			lp->a->write_csr(ioaddr, CSR15, csr15);
			lp->init_block->mode = FUNC0(csr15);

			lp->fdx = cmd->base.duplex == DUPLEX_FULL;
			bcr9 = lp->a->read_bcr(ioaddr, 9) & ~0x0003;
			if (cmd->base.duplex == DUPLEX_FULL)
				bcr9 |= 0x0003;
			lp->a->write_bcr(ioaddr, 9, bcr9);
		}
		if (suspended)
			FUNC4(lp, ioaddr);
		else if (FUNC3(dev))
			FUNC5(dev, CSR0_NORMAL);
		r = 0;
	}
	FUNC8(&lp->lock, flags);
	return r;
}