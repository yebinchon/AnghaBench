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
struct nfp_net_dp {scalar_t__ rx_dma_off; int /*<<< orphan*/  rx_dma_dir; int /*<<< orphan*/  num_tx_rings; struct bpf_prog* xdp_prog; } ;
struct TYPE_2__ {scalar_t__ rx_offset; scalar_t__ num_rx_rings; int /*<<< orphan*/  xdp_prog; } ;
struct nfp_net {int /*<<< orphan*/  xdp; TYPE_1__ dp; } ;
struct netdev_bpf {int /*<<< orphan*/  extack; struct bpf_prog* prog; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bpf_prog*) ; 
 scalar_t__ XDP_PACKET_HEADROOM ; 
 struct nfp_net_dp* FUNC1 (struct nfp_net*) ; 
 int FUNC2 (struct nfp_net*,struct nfp_net_dp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct netdev_bpf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct netdev_bpf*) ; 

__attribute__((used)) static int FUNC5(struct nfp_net *nn, struct netdev_bpf *bpf)
{
	struct bpf_prog *prog = bpf->prog;
	struct nfp_net_dp *dp;
	int err;

	if (!FUNC3(&nn->xdp, bpf))
		return -EBUSY;

	if (!prog == !nn->dp.xdp_prog) {
		FUNC0(nn->dp.xdp_prog, prog);
		FUNC4(&nn->xdp, bpf);
		return 0;
	}

	dp = FUNC1(nn);
	if (!dp)
		return -ENOMEM;

	dp->xdp_prog = prog;
	dp->num_tx_rings += prog ? nn->dp.num_rx_rings : -nn->dp.num_rx_rings;
	dp->rx_dma_dir = prog ? DMA_BIDIRECTIONAL : DMA_FROM_DEVICE;
	dp->rx_dma_off = prog ? XDP_PACKET_HEADROOM - nn->dp.rx_offset : 0;

	/* We need RX reconfig to remap the buffers (BIDIR vs FROM_DEV) */
	err = FUNC2(nn, dp, bpf->extack);
	if (err)
		return err;

	FUNC4(&nn->xdp, bpf);
	return 0;
}