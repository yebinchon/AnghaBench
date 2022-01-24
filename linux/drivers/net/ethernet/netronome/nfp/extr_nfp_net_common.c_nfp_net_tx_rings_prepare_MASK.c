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
struct nfp_net_dp {unsigned int num_tx_rings; unsigned int num_stack_tx_rings; int /*<<< orphan*/ * tx_rings; } ;
struct nfp_net {int /*<<< orphan*/ * r_vecs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct nfp_net_dp*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct nfp_net_dp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_net_dp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static int FUNC7(struct nfp_net *nn, struct nfp_net_dp *dp)
{
	unsigned int r;

	dp->tx_rings = FUNC0(dp->num_tx_rings, sizeof(*dp->tx_rings),
			       GFP_KERNEL);
	if (!dp->tx_rings)
		return -ENOMEM;

	for (r = 0; r < dp->num_tx_rings; r++) {
		int bias = 0;

		if (r >= dp->num_stack_tx_rings)
			bias = dp->num_stack_tx_rings;

		FUNC6(&dp->tx_rings[r], &nn->r_vecs[r - bias],
				     r, bias);

		if (FUNC2(dp, &dp->tx_rings[r]))
			goto err_free_prev;

		if (FUNC3(dp, &dp->tx_rings[r]))
			goto err_free_ring;
	}

	return 0;

err_free_prev:
	while (r--) {
		FUNC4(dp, &dp->tx_rings[r]);
err_free_ring:
		FUNC5(&dp->tx_rings[r]);
	}
	FUNC1(dp->tx_rings);
	return -ENOMEM;
}