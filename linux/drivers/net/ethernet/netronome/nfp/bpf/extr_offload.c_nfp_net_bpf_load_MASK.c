#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct nfp_prog {unsigned int stack_size; unsigned int prog_len; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; TYPE_3__* netdev; } ;
struct nfp_net {TYPE_4__ dp; int /*<<< orphan*/  app_priv; } ;
struct netlink_ext_ack {int dummy; } ;
struct bpf_prog {TYPE_2__* aux; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_7__ {int /*<<< orphan*/  mtu; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_pkt_offset; TYPE_1__* offload; } ;
struct TYPE_5__ {struct nfp_prog* dev_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  NFP_NET_CFG_BPF_ADDR ; 
 int /*<<< orphan*/  NFP_NET_CFG_BPF_INL_MTU ; 
 int /*<<< orphan*/  NFP_NET_CFG_BPF_MAX_LEN ; 
 int /*<<< orphan*/  NFP_NET_CFG_BPF_SIZE ; 
 int /*<<< orphan*/  NFP_NET_CFG_BPF_STACK_SZ ; 
 int /*<<< orphan*/  NFP_NET_CFG_UPDATE_BPF ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct nfp_prog*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nfp_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nfp_net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC14(struct nfp_net *nn, struct bpf_prog *prog,
		 struct netlink_ext_ack *extack)
{
	struct nfp_prog *nfp_prog = prog->aux->offload->dev_priv;
	unsigned int fw_mtu, pkt_off, max_stack, max_prog_len;
	dma_addr_t dma_addr;
	void *img;
	int err;

	fw_mtu = FUNC10(nn, NFP_NET_CFG_BPF_INL_MTU) * 64 - 32;
	pkt_off = FUNC7(prog->aux->max_pkt_offset, nn->dp.netdev->mtu);
	if (fw_mtu < pkt_off) {
		FUNC1(extack, "BPF offload not supported with potential packet access beyond HW packet split boundary");
		return -EOPNOTSUPP;
	}

	max_stack = FUNC10(nn, NFP_NET_CFG_BPF_STACK_SZ) * 64;
	if (nfp_prog->stack_size > max_stack) {
		FUNC1(extack, "stack too large");
		return -EOPNOTSUPP;
	}

	max_prog_len = FUNC11(nn, NFP_NET_CFG_BPF_MAX_LEN);
	if (nfp_prog->prog_len > max_prog_len) {
		FUNC1(extack, "program too long");
		return -EOPNOTSUPP;
	}

	img = FUNC8(nfp_prog, nn->app_priv);
	if (FUNC0(img))
		return FUNC2(img);

	dma_addr = FUNC3(nn->dp.dev, img,
				  nfp_prog->prog_len * sizeof(u64),
				  DMA_TO_DEVICE);
	if (FUNC4(nn->dp.dev, dma_addr)) {
		FUNC6(img);
		return -ENOMEM;
	}

	FUNC13(nn, NFP_NET_CFG_BPF_SIZE, nfp_prog->prog_len);
	FUNC12(nn, NFP_NET_CFG_BPF_ADDR, dma_addr);

	/* Load up the JITed code */
	err = FUNC9(nn, NFP_NET_CFG_UPDATE_BPF);
	if (err)
		FUNC1(extack,
				   "FW command error while loading BPF");

	FUNC5(nn->dp.dev, dma_addr, nfp_prog->prog_len * sizeof(u64),
			 DMA_TO_DEVICE);
	FUNC6(img);

	return err;
}