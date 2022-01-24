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
struct nfp_net_dp {int dummy; } ;
struct TYPE_4__ {scalar_t__ num_stack_tx_rings; TYPE_2__* netdev; int /*<<< orphan*/  num_rx_rings; } ;
struct nfp_net {unsigned int max_r_vecs; TYPE_1__ dp; int /*<<< orphan*/ * r_vecs; } ;
struct TYPE_5__ {scalar_t__ real_num_tx_queues; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*,struct nfp_net_dp*) ; 
 int FUNC3 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct nfp_net *nn, struct nfp_net_dp *dp)
{
	unsigned int r;
	int err;

	FUNC2(nn, dp);

	for (r = 0; r <	nn->max_r_vecs; r++)
		FUNC4(&nn->dp, &nn->r_vecs[r], r);

	err = FUNC0(nn->dp.netdev, nn->dp.num_rx_rings);
	if (err)
		return err;

	if (nn->dp.netdev->real_num_tx_queues != nn->dp.num_stack_tx_rings) {
		err = FUNC1(nn->dp.netdev,
						   nn->dp.num_stack_tx_rings);
		if (err)
			return err;
	}

	return FUNC3(nn);
}