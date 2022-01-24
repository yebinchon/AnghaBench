#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct xdp_buff {void* data; void* data_end; void* data_hard_start; int /*<<< orphan*/ * rxq; } ;
struct rtnl_link_stats64 {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct dpaa2_fd {int dummy; } ;
struct dpaa2_eth_priv {TYPE_4__* net_dev; int /*<<< orphan*/  percpu_stats; } ;
struct dpaa2_eth_fq {int /*<<< orphan*/  flowid; } ;
struct TYPE_8__ {int res; int /*<<< orphan*/  prog; } ;
struct TYPE_7__ {int /*<<< orphan*/  xdp_redirect; int /*<<< orphan*/  xdp_drop; int /*<<< orphan*/  xdp_tx; int /*<<< orphan*/  xdp_tx_err; } ;
struct dpaa2_eth_channel {TYPE_3__ xdp; TYPE_2__ stats; int /*<<< orphan*/  buf_count; int /*<<< orphan*/  xdp_rxq; } ;
struct bpf_prog {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct TYPE_9__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DPAA2_ETH_RX_BUF_SIZE ; 
 struct bpf_prog* FUNC0 (int /*<<< orphan*/ ) ; 
#define  XDP_ABORTED 132 
#define  XDP_DROP 131 
 int XDP_PACKET_HEADROOM ; 
#define  XDP_PASS 130 
#define  XDP_REDIRECT 129 
#define  XDP_TX 128 
 int FUNC1 (struct bpf_prog*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dpaa2_fd*) ; 
 int FUNC5 (struct dpaa2_fd*) ; 
 int FUNC6 (struct dpaa2_fd*) ; 
 int /*<<< orphan*/  FUNC7 (struct dpaa2_fd*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dpaa2_fd*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 struct rtnl_link_stats64* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,struct bpf_prog*,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (TYPE_4__*,struct xdp_buff*,struct bpf_prog*) ; 
 int FUNC15 (struct dpaa2_eth_priv*,struct dpaa2_fd*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct dpaa2_eth_priv*,struct dpaa2_eth_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct xdp_buff*) ; 

__attribute__((used)) static u32 FUNC18(struct dpaa2_eth_priv *priv,
		   struct dpaa2_eth_channel *ch,
		   struct dpaa2_eth_fq *rx_fq,
		   struct dpaa2_fd *fd, void *vaddr)
{
	dma_addr_t addr = FUNC4(fd);
	struct rtnl_link_stats64 *percpu_stats;
	struct bpf_prog *xdp_prog;
	struct xdp_buff xdp;
	u32 xdp_act = XDP_PASS;
	int err;

	percpu_stats = FUNC11(priv->percpu_stats);

	FUNC9();

	xdp_prog = FUNC0(ch->xdp.prog);
	if (!xdp_prog)
		goto out;

	xdp.data = vaddr + FUNC6(fd);
	xdp.data_end = xdp.data + FUNC5(fd);
	xdp.data_hard_start = xdp.data - XDP_PACKET_HEADROOM;
	FUNC17(&xdp);
	xdp.rxq = &ch->xdp_rxq;

	xdp_act = FUNC1(xdp_prog, &xdp);

	/* xdp.data pointer may have changed */
	FUNC8(fd, xdp.data - vaddr);
	FUNC7(fd, xdp.data_end - xdp.data);

	switch (xdp_act) {
	case XDP_PASS:
		break;
	case XDP_TX:
		err = FUNC15(priv, fd, vaddr, rx_fq->flowid);
		if (err) {
			FUNC16(priv, ch, addr);
			percpu_stats->tx_errors++;
			ch->stats.xdp_tx_err++;
		} else {
			percpu_stats->tx_packets++;
			percpu_stats->tx_bytes += FUNC5(fd);
			ch->stats.xdp_tx++;
		}
		break;
	default:
		FUNC2(xdp_act);
		/* fall through */
	case XDP_ABORTED:
		FUNC12(priv->net_dev, xdp_prog, xdp_act);
		/* fall through */
	case XDP_DROP:
		FUNC16(priv, ch, addr);
		ch->stats.xdp_drop++;
		break;
	case XDP_REDIRECT:
		FUNC3(priv->net_dev->dev.parent, addr,
			       DPAA2_ETH_RX_BUF_SIZE, DMA_BIDIRECTIONAL);
		ch->buf_count--;
		xdp.data_hard_start = vaddr;
		err = FUNC14(priv->net_dev, &xdp, xdp_prog);
		if (FUNC13(err))
			ch->stats.xdp_drop++;
		else
			ch->stats.xdp_redirect++;
		break;
	}

	ch->xdp.res |= xdp_act;
out:
	FUNC10();
	return xdp_act;
}