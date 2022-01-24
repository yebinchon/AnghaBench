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
typedef  int u32 ;
struct TYPE_2__ {int ctrl; unsigned int num_rx_rings; unsigned int num_tx_rings; unsigned int num_r_vecs; int /*<<< orphan*/ * tx_rings; int /*<<< orphan*/ * rx_rings; } ;
struct nfp_net {int cap; TYPE_1__ dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_NET_CFG_CTRL ; 
 int NFP_NET_CFG_CTRL_ENABLE ; 
 int NFP_NET_CFG_CTRL_RINGCFG ; 
 int /*<<< orphan*/  NFP_NET_CFG_RXRS_ENABLE ; 
 int /*<<< orphan*/  NFP_NET_CFG_TXRS_ENABLE ; 
 int NFP_NET_CFG_UPDATE_GEN ; 
 int NFP_NET_CFG_UPDATE_MSIX ; 
 int NFP_NET_CFG_UPDATE_RING ; 
 int FUNC0 (struct nfp_net*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_net*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_net*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct nfp_net *nn)
{
	u32 new_ctrl, update;
	unsigned int r;
	int err;

	new_ctrl = nn->dp.ctrl;
	new_ctrl &= ~NFP_NET_CFG_CTRL_ENABLE;
	update = NFP_NET_CFG_UPDATE_GEN;
	update |= NFP_NET_CFG_UPDATE_MSIX;
	update |= NFP_NET_CFG_UPDATE_RING;

	if (nn->cap & NFP_NET_CFG_CTRL_RINGCFG)
		new_ctrl &= ~NFP_NET_CFG_CTRL_RINGCFG;

	FUNC6(nn, NFP_NET_CFG_TXRS_ENABLE, 0);
	FUNC6(nn, NFP_NET_CFG_RXRS_ENABLE, 0);

	FUNC5(nn, NFP_NET_CFG_CTRL, new_ctrl);
	err = FUNC0(nn, update);
	if (err)
		FUNC4(nn, "Could not disable device: %d\n", err);

	for (r = 0; r < nn->dp.num_rx_rings; r++)
		FUNC1(&nn->dp.rx_rings[r]);
	for (r = 0; r < nn->dp.num_tx_rings; r++)
		FUNC2(&nn->dp, &nn->dp.tx_rings[r]);
	for (r = 0; r < nn->dp.num_r_vecs; r++)
		FUNC3(nn, r);

	nn->dp.ctrl = new_ctrl;
}