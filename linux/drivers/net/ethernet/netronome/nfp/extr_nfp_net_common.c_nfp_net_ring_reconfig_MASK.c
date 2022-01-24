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
struct nfp_net_dp {int num_r_vecs; int /*<<< orphan*/  netdev; int /*<<< orphan*/  num_stack_tx_rings; scalar_t__ num_rx_rings; scalar_t__ xdp_prog; int /*<<< orphan*/  num_tx_rings; int /*<<< orphan*/  fl_bufsz; } ;
struct TYPE_2__ {int num_r_vecs; } ;
struct nfp_net {int /*<<< orphan*/ * r_vecs; TYPE_1__ dp; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfp_net_dp*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_net_dp*) ; 
 int FUNC4 (struct nfp_net*,struct nfp_net_dp*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_net*,struct nfp_net_dp*) ; 
 int FUNC9 (struct nfp_net*,struct nfp_net_dp*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfp_net*) ; 
 int FUNC11 (struct nfp_net*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nfp_net_dp*) ; 
 int FUNC13 (struct nfp_net*,struct nfp_net_dp*) ; 
 int /*<<< orphan*/  FUNC14 (struct nfp_net_dp*) ; 
 int FUNC15 (struct nfp_net*,struct nfp_net_dp*) ; 
 int /*<<< orphan*/  FUNC16 (struct nfp_net*,char*,int,int) ; 

int FUNC17(struct nfp_net *nn, struct nfp_net_dp *dp,
			  struct netlink_ext_ack *extack)
{
	int r, err;

	dp->fl_bufsz = FUNC3(dp);

	dp->num_stack_tx_rings = dp->num_tx_rings;
	if (dp->xdp_prog)
		dp->num_stack_tx_rings -= dp->num_rx_rings;

	dp->num_r_vecs = FUNC1(dp->num_rx_rings, dp->num_stack_tx_rings);

	err = FUNC4(nn, dp, extack);
	if (err)
		goto exit_free_dp;

	if (!FUNC2(dp->netdev)) {
		FUNC8(nn, dp);
		err = 0;
		goto exit_free_dp;
	}

	/* Prepare new rings */
	for (r = nn->dp.num_r_vecs; r < dp->num_r_vecs; r++) {
		err = FUNC11(nn, &nn->r_vecs[r], r);
		if (err) {
			dp->num_r_vecs = r;
			goto err_cleanup_vecs;
		}
	}

	err = FUNC13(nn, dp);
	if (err)
		goto err_cleanup_vecs;

	err = FUNC15(nn, dp);
	if (err)
		goto err_free_rx;

	/* Stop device, swap in new rings, try to start the firmware */
	FUNC7(nn);
	FUNC6(nn);

	err = FUNC9(nn, dp);
	if (err) {
		int err2;

		FUNC6(nn);

		/* Try with old configuration and old rings */
		err2 = FUNC9(nn, dp);
		if (err2)
			FUNC16(nn, "Can't restore ring config - FW communication failed (%d,%d)\n",
			       err, err2);
	}
	for (r = dp->num_r_vecs - 1; r >= nn->dp.num_r_vecs; r--)
		FUNC5(nn, &nn->r_vecs[r]);

	FUNC12(dp);
	FUNC14(dp);

	FUNC10(nn);
exit_free_dp:
	FUNC0(dp);

	return err;

err_free_rx:
	FUNC12(dp);
err_cleanup_vecs:
	for (r = dp->num_r_vecs - 1; r >= nn->dp.num_r_vecs; r--)
		FUNC5(nn, &nn->r_vecs[r]);
	FUNC0(dp);
	return err;
}