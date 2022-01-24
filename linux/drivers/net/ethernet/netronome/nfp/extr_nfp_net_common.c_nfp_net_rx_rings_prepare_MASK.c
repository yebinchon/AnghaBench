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
struct nfp_net_dp {unsigned int num_rx_rings; int /*<<< orphan*/ * rx_rings; } ;
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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct nfp_net *nn, struct nfp_net_dp *dp)
{
	unsigned int r;

	dp->rx_rings = FUNC0(dp->num_rx_rings, sizeof(*dp->rx_rings),
			       GFP_KERNEL);
	if (!dp->rx_rings)
		return -ENOMEM;

	for (r = 0; r < dp->num_rx_rings; r++) {
		FUNC6(&dp->rx_rings[r], &nn->r_vecs[r], r);

		if (FUNC2(dp, &dp->rx_rings[r]))
			goto err_free_prev;

		if (FUNC3(dp, &dp->rx_rings[r]))
			goto err_free_ring;
	}

	return 0;

err_free_prev:
	while (r--) {
		FUNC4(dp, &dp->rx_rings[r]);
err_free_ring:
		FUNC5(&dp->rx_rings[r]);
	}
	FUNC1(dp->rx_rings);
	return -ENOMEM;
}