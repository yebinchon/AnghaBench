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
struct nfp_net_dp {unsigned int num_tx_rings; int /*<<< orphan*/ * tx_rings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net_dp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nfp_net_dp *dp)
{
	unsigned int r;

	for (r = 0; r < dp->num_tx_rings; r++) {
		FUNC1(dp, &dp->tx_rings[r]);
		FUNC2(&dp->tx_rings[r]);
	}

	FUNC0(dp->tx_rings);
}