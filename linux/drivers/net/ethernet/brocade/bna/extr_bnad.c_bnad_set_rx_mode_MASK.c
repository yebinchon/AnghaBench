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
struct net_device {int flags; } ;
struct bnad {int cfg_flags; int /*<<< orphan*/  bna_lock; TYPE_1__* rx_info; } ;
typedef  enum bna_rxmode { ____Placeholder_bna_rxmode } bna_rxmode ;
struct TYPE_2__ {int /*<<< orphan*/ * rx; } ;

/* Variables and functions */
 int BNAD_CF_ALLMULTI ; 
 int BNAD_CF_DEFAULT ; 
 int BNAD_CF_PROMISC ; 
 int BNAD_RXMODE_PROMISC_DEFAULT ; 
 int BNA_RXMODE_ALLMULTI ; 
 int BNA_RXMODE_DEFAULT ; 
 int BNA_RXMODE_PROMISC ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnad*) ; 
 struct bnad* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC6(struct net_device *netdev)
{
	struct bnad *bnad = FUNC3(netdev);
	enum bna_rxmode new_mode, mode_mask;
	unsigned long flags;

	FUNC4(&bnad->bna_lock, flags);

	if (bnad->rx_info[0].rx == NULL) {
		FUNC5(&bnad->bna_lock, flags);
		return;
	}

	/* clear bnad flags to update it with new settings */
	bnad->cfg_flags &= ~(BNAD_CF_PROMISC | BNAD_CF_DEFAULT |
			BNAD_CF_ALLMULTI);

	new_mode = 0;
	if (netdev->flags & IFF_PROMISC) {
		new_mode |= BNAD_RXMODE_PROMISC_DEFAULT;
		bnad->cfg_flags |= BNAD_CF_PROMISC;
	} else {
		FUNC1(bnad);

		if (bnad->cfg_flags & BNAD_CF_ALLMULTI)
			new_mode |= BNA_RXMODE_ALLMULTI;

		FUNC2(bnad);

		if (bnad->cfg_flags & BNAD_CF_DEFAULT)
			new_mode |= BNA_RXMODE_DEFAULT;
	}

	mode_mask = BNA_RXMODE_PROMISC | BNA_RXMODE_DEFAULT |
			BNA_RXMODE_ALLMULTI;
	FUNC0(bnad->rx_info[0].rx, new_mode, mode_mask);

	FUNC5(&bnad->bna_lock, flags);
}