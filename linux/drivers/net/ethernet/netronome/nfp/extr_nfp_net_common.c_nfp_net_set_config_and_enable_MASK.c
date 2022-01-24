#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_4__ {int ctrl; unsigned int num_tx_rings; unsigned int num_rx_rings; int mtu; int fl_bufsz; int rx_dma_off; TYPE_1__* netdev; int /*<<< orphan*/ * rx_rings; int /*<<< orphan*/ * tx_rings; } ;
struct nfp_net {int rss_cfg; int cap; TYPE_2__ dp; int /*<<< orphan*/  vxlan_usecnt; int /*<<< orphan*/  vxlan_ports; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_NET_CFG_CTRL ; 
 int NFP_NET_CFG_CTRL_ENABLE ; 
 int NFP_NET_CFG_CTRL_IRQMOD ; 
 int NFP_NET_CFG_CTRL_RINGCFG ; 
 int NFP_NET_CFG_CTRL_RSS_ANY ; 
 int NFP_NET_CFG_CTRL_VXLAN ; 
 int /*<<< orphan*/  NFP_NET_CFG_FLBUFSZ ; 
 int /*<<< orphan*/  NFP_NET_CFG_MTU ; 
 int /*<<< orphan*/  NFP_NET_CFG_RSS_CTRL ; 
 int /*<<< orphan*/  NFP_NET_CFG_RXRS_ENABLE ; 
 int /*<<< orphan*/  NFP_NET_CFG_TXRS_ENABLE ; 
 int NFP_NET_CFG_UPDATE_GEN ; 
 int NFP_NET_CFG_UPDATE_IRQMOD ; 
 int NFP_NET_CFG_UPDATE_MSIX ; 
 int NFP_NET_CFG_UPDATE_RING ; 
 int NFP_NET_CFG_UPDATE_RSS ; 
 int NFP_NET_RX_BUF_NON_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*) ; 
 int FUNC3 (struct nfp_net*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_net*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_net*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfp_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nfp_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(struct nfp_net *nn)
{
	u32 bufsz, new_ctrl, update = 0;
	unsigned int r;
	int err;

	new_ctrl = nn->dp.ctrl;

	if (nn->dp.ctrl & NFP_NET_CFG_CTRL_RSS_ANY) {
		FUNC5(nn);
		FUNC4(nn);
		FUNC10(nn, NFP_NET_CFG_RSS_CTRL, nn->rss_cfg);
		update |= NFP_NET_CFG_UPDATE_RSS;
	}

	if (nn->dp.ctrl & NFP_NET_CFG_CTRL_IRQMOD) {
		FUNC2(nn);
		update |= NFP_NET_CFG_UPDATE_IRQMOD;
	}

	for (r = 0; r < nn->dp.num_tx_rings; r++)
		FUNC8(nn, &nn->dp.tx_rings[r], r);
	for (r = 0; r < nn->dp.num_rx_rings; r++)
		FUNC7(nn, &nn->dp.rx_rings[r], r);

	FUNC11(nn, NFP_NET_CFG_TXRS_ENABLE, nn->dp.num_tx_rings == 64 ?
		  0xffffffffffffffffULL : ((u64)1 << nn->dp.num_tx_rings) - 1);

	FUNC11(nn, NFP_NET_CFG_RXRS_ENABLE, nn->dp.num_rx_rings == 64 ?
		  0xffffffffffffffffULL : ((u64)1 << nn->dp.num_rx_rings) - 1);

	if (nn->dp.netdev)
		FUNC9(nn, nn->dp.netdev->dev_addr);

	FUNC10(nn, NFP_NET_CFG_MTU, nn->dp.mtu);

	bufsz = nn->dp.fl_bufsz - nn->dp.rx_dma_off - NFP_NET_RX_BUF_NON_DATA;
	FUNC10(nn, NFP_NET_CFG_FLBUFSZ, bufsz);

	/* Enable device */
	new_ctrl |= NFP_NET_CFG_CTRL_ENABLE;
	update |= NFP_NET_CFG_UPDATE_GEN;
	update |= NFP_NET_CFG_UPDATE_MSIX;
	update |= NFP_NET_CFG_UPDATE_RING;
	if (nn->cap & NFP_NET_CFG_CTRL_RINGCFG)
		new_ctrl |= NFP_NET_CFG_CTRL_RINGCFG;

	FUNC10(nn, NFP_NET_CFG_CTRL, new_ctrl);
	err = FUNC3(nn, update);
	if (err) {
		FUNC1(nn);
		return err;
	}

	nn->dp.ctrl = new_ctrl;

	for (r = 0; r < nn->dp.num_rx_rings; r++)
		FUNC6(&nn->dp, &nn->dp.rx_rings[r]);

	/* Since reconfiguration requests while NFP is down are ignored we
	 * have to wipe the entire VXLAN configuration and reinitialize it.
	 */
	if (nn->dp.ctrl & NFP_NET_CFG_CTRL_VXLAN) {
		FUNC0(&nn->vxlan_ports, 0, sizeof(nn->vxlan_ports));
		FUNC0(&nn->vxlan_usecnt, 0, sizeof(nn->vxlan_usecnt));
		FUNC12(nn->dp.netdev);
	}

	return 0;
}