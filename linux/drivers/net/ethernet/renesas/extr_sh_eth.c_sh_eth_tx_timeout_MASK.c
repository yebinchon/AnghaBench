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
struct sh_eth_rxdesc {void* addr; void* status; } ;
struct sh_eth_private {int num_rx_ring; int num_tx_ring; int /*<<< orphan*/ ** tx_skbuff; int /*<<< orphan*/ ** rx_skbuff; struct sh_eth_rxdesc* rx_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  EESR ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sh_eth_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_eth_private*,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC8(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC2(ndev);
	struct sh_eth_rxdesc *rxdesc;
	int i;

	FUNC5(ndev);

	FUNC3(mdp, timer, ndev,
		  "transmit timed out, status %8.8x, resetting...\n",
		  FUNC7(ndev, EESR));

	/* tx_errors count up */
	ndev->stats.tx_errors++;

	/* Free all the skbuffs in the Rx queue. */
	for (i = 0; i < mdp->num_rx_ring; i++) {
		rxdesc = &mdp->rx_ring[i];
		rxdesc->status = FUNC0(0);
		rxdesc->addr = FUNC0(0xBADF00D0);
		FUNC1(mdp->rx_skbuff[i]);
		mdp->rx_skbuff[i] = NULL;
	}
	for (i = 0; i < mdp->num_tx_ring; i++) {
		FUNC1(mdp->tx_skbuff[i]);
		mdp->tx_skbuff[i] = NULL;
	}

	/* device init */
	FUNC6(ndev);

	FUNC4(ndev);
}