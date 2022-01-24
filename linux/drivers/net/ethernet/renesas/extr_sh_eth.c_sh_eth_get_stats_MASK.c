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
struct sh_eth_private {TYPE_1__* cd; int /*<<< orphan*/  is_opened; } ;
struct net_device_stats {int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  collisions; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct TYPE_2__ {scalar_t__ cexcr; scalar_t__ no_tx_cntrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDCR ; 
 int /*<<< orphan*/  CEECR ; 
 int /*<<< orphan*/  CERCR ; 
 int /*<<< orphan*/  CNDCR ; 
 int /*<<< orphan*/  LCCR ; 
 int /*<<< orphan*/  TROCR ; 
 struct sh_eth_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct net_device_stats *FUNC2(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC0(ndev);

	if (mdp->cd->no_tx_cntrs)
		return &ndev->stats;

	if (!mdp->is_opened)
		return &ndev->stats;

	FUNC1(ndev, &ndev->stats.tx_dropped, TROCR);
	FUNC1(ndev, &ndev->stats.collisions, CDCR);
	FUNC1(ndev, &ndev->stats.tx_carrier_errors, LCCR);

	if (mdp->cd->cexcr) {
		FUNC1(ndev, &ndev->stats.tx_carrier_errors,
				   CERCR);
		FUNC1(ndev, &ndev->stats.tx_carrier_errors,
				   CEECR);
	} else {
		FUNC1(ndev, &ndev->stats.tx_carrier_errors,
				   CNDCR);
	}

	return &ndev->stats;
}