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
typedef  int u32 ;
struct sh_eth_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  napi; int /*<<< orphan*/  irq_enabled; struct sh_eth_cpu_data* cd; } ;
struct sh_eth_cpu_data {int tx_check; int eesr_err_check; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  EESIPR ; 
 int EESIPR_ECIIP ; 
 int /*<<< orphan*/  EESR ; 
 int EESR_ECI ; 
 int EESR_RX_CHECK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct sh_eth_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 
 int FUNC7 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *netdev)
{
	struct net_device *ndev = netdev;
	struct sh_eth_private *mdp = FUNC2(ndev);
	struct sh_eth_cpu_data *cd = mdp->cd;
	irqreturn_t ret = IRQ_NONE;
	u32 intr_status, intr_enable;

	FUNC10(&mdp->lock);

	/* Get interrupt status */
	intr_status = FUNC7(ndev, EESR);
	/* Mask it with the interrupt mask, forcing ECI interrupt  to be always
	 * enabled since it's the one that  comes  thru regardless of the mask,
	 * and  we need to fully handle it  in sh_eth_emac_interrupt() in order
	 * to quench it as it doesn't get cleared by just writing 1 to the  ECI
	 * bit...
	 */
	intr_enable = FUNC7(ndev, EESIPR);
	intr_status &= intr_enable | EESIPR_ECIIP;
	if (intr_status & (EESR_RX_CHECK | cd->tx_check | EESR_ECI |
			   cd->eesr_err_check))
		ret = IRQ_HANDLED;
	else
		goto out;

	if (FUNC12(!mdp->irq_enabled)) {
		FUNC9(ndev, 0, EESIPR);
		goto out;
	}

	if (intr_status & EESR_RX_CHECK) {
		if (FUNC1(&mdp->napi)) {
			/* Mask Rx interrupts */
			FUNC9(ndev, intr_enable & ~EESR_RX_CHECK,
				     EESIPR);
			FUNC0(&mdp->napi);
		} else {
			FUNC3(ndev,
				    "ignoring interrupt, status 0x%08x, mask 0x%08x.\n",
				    intr_status, intr_enable);
		}
	}

	/* Tx Check */
	if (intr_status & cd->tx_check) {
		/* Clear Tx interrupts */
		FUNC9(ndev, intr_status & cd->tx_check, EESR);

		FUNC8(ndev, true);
		FUNC4(ndev);
	}

	/* E-MAC interrupt */
	if (intr_status & EESR_ECI)
		FUNC5(ndev);

	if (intr_status & cd->eesr_err_check) {
		/* Clear error interrupts */
		FUNC9(ndev, intr_status & cd->eesr_err_check, EESR);

		FUNC6(ndev, intr_status);
	}

out:
	FUNC11(&mdp->lock);

	return ret;
}