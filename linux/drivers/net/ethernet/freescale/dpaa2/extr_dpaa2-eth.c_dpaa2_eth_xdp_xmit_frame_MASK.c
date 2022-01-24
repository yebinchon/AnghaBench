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
struct xdp_frame {unsigned int headroom; void* data; int /*<<< orphan*/  len; } ;
struct rtnl_link_stats64 {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_3__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct dpaa2_fd {int dummy; } ;
struct TYPE_4__ {void* dma_size; struct xdp_frame* xdpf; } ;
struct dpaa2_eth_swa {TYPE_2__ xdp; int /*<<< orphan*/  type; } ;
struct dpaa2_eth_priv {int (* enqueue ) (struct dpaa2_eth_priv*,struct dpaa2_eth_fq*,struct dpaa2_fd*,int /*<<< orphan*/ ) ;struct dpaa2_eth_fq* fq; int /*<<< orphan*/  percpu_extras; int /*<<< orphan*/  percpu_stats; } ;
struct dpaa2_eth_fq {int dummy; } ;
struct dpaa2_eth_drv_stats {int tx_portal_busy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  fd ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int DPAA2_ETH_ENQUEUE_RETRIES ; 
 int /*<<< orphan*/  DPAA2_ETH_SWA_XDP ; 
 int DPAA2_ETH_TX_BUF_ALIGN ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FD_CTRL_PTA ; 
 void* FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,void*,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct dpaa2_eth_priv*,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (struct dpaa2_eth_priv*) ; 
 scalar_t__ FUNC5 (struct dpaa2_fd*) ; 
 int /*<<< orphan*/  FUNC6 (struct dpaa2_fd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dpaa2_fd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dpaa2_fd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dpaa2_fd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dpaa2_fd*,int) ; 
 int /*<<< orphan*/  dpaa2_fd_single ; 
 int /*<<< orphan*/  FUNC11 (struct dpaa2_fd*,int /*<<< orphan*/ ,int) ; 
 struct dpaa2_eth_priv* FUNC12 (struct net_device*) ; 
 size_t FUNC13 () ; 
 int FUNC14 (struct dpaa2_eth_priv*,struct dpaa2_eth_fq*,struct dpaa2_fd*,int /*<<< orphan*/ ) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct net_device *net_dev,
				    struct xdp_frame *xdpf)
{
	struct dpaa2_eth_priv *priv = FUNC12(net_dev);
	struct device *dev = net_dev->dev.parent;
	struct rtnl_link_stats64 *percpu_stats;
	struct dpaa2_eth_drv_stats *percpu_extras;
	unsigned int needed_headroom;
	struct dpaa2_eth_swa *swa;
	struct dpaa2_eth_fq *fq;
	struct dpaa2_fd fd;
	void *buffer_start, *aligned_start;
	dma_addr_t addr;
	int err, i;

	/* We require a minimum headroom to be able to transmit the frame.
	 * Otherwise return an error and let the original net_device handle it
	 */
	needed_headroom = FUNC3(priv, NULL);
	if (xdpf->headroom < needed_headroom)
		return -EINVAL;

	percpu_stats = FUNC15(priv->percpu_stats);
	percpu_extras = FUNC15(priv->percpu_extras);

	/* Setup the FD fields */
	FUNC11(&fd, 0, sizeof(fd));

	/* Align FD address, if possible */
	buffer_start = xdpf->data - needed_headroom;
	aligned_start = FUNC0(buffer_start - DPAA2_ETH_TX_BUF_ALIGN,
				  DPAA2_ETH_TX_BUF_ALIGN);
	if (aligned_start >= xdpf->data - xdpf->headroom)
		buffer_start = aligned_start;

	swa = (struct dpaa2_eth_swa *)buffer_start;
	/* fill in necessary fields here */
	swa->type = DPAA2_ETH_SWA_XDP;
	swa->xdp.dma_size = xdpf->data + xdpf->len - buffer_start;
	swa->xdp.xdpf = xdpf;

	addr = FUNC1(dev, buffer_start,
			      swa->xdp.dma_size,
			      DMA_BIDIRECTIONAL);
	if (FUNC16(FUNC2(dev, addr))) {
		percpu_stats->tx_dropped++;
		return -ENOMEM;
	}

	FUNC6(&fd, addr);
	FUNC10(&fd, xdpf->data - buffer_start);
	FUNC9(&fd, xdpf->len);
	FUNC8(&fd, dpaa2_fd_single);
	FUNC7(&fd, FD_CTRL_PTA);

	fq = &priv->fq[FUNC13() % FUNC4(priv)];
	for (i = 0; i < DPAA2_ETH_ENQUEUE_RETRIES; i++) {
		err = priv->enqueue(priv, fq, &fd, 0);
		if (err != -EBUSY)
			break;
	}
	percpu_extras->tx_portal_busy += i;
	if (FUNC16(err < 0)) {
		percpu_stats->tx_errors++;
		/* let the Rx device handle the cleanup */
		return err;
	}

	percpu_stats->tx_packets++;
	percpu_stats->tx_bytes += FUNC5(&fd);

	return 0;
}