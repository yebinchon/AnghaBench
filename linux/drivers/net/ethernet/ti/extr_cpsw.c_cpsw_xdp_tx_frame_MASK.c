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
struct xdp_frame {int headroom; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct page {int dummy; } ;
struct cpsw_priv {int emac_port; TYPE_4__* ndev; struct cpsw_common* cpsw; } ;
struct cpsw_meta_xdp {scalar_t__ ch; TYPE_4__* ndev; } ;
struct TYPE_6__ {int dual_emac; } ;
struct cpsw_common {TYPE_2__ data; TYPE_1__* txv; } ;
struct cpdma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_7__ {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_8__ {TYPE_3__ stats; } ;
struct TYPE_5__ {struct cpdma_chan* ch; } ;

/* Variables and functions */
 int CPSW_XMETA_OFFSET ; 
 int EINVAL ; 
 int FUNC0 (struct cpdma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct cpdma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xdp_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdp_frame*) ; 

__attribute__((used)) static int FUNC5(struct cpsw_priv *priv, struct xdp_frame *xdpf,
			     struct page *page)
{
	struct cpsw_common *cpsw = priv->cpsw;
	struct cpsw_meta_xdp *xmeta;
	struct cpdma_chan *txch;
	dma_addr_t dma;
	int ret, port;

	xmeta = (void *)xdpf + CPSW_XMETA_OFFSET;
	xmeta->ndev = priv->ndev;
	xmeta->ch = 0;
	txch = cpsw->txv[0].ch;

	port = priv->emac_port + cpsw->data.dual_emac;
	if (page) {
		dma = FUNC3(page);
		dma += xdpf->headroom + sizeof(struct xdp_frame);
		ret = FUNC1(txch, FUNC2(xdpf),
					       dma, xdpf->len, port);
	} else {
		if (sizeof(*xmeta) > xdpf->headroom) {
			FUNC4(xdpf);
			return -EINVAL;
		}

		ret = FUNC0(txch, FUNC2(xdpf),
					xdpf->data, xdpf->len, port);
	}

	if (ret) {
		priv->ndev->stats.tx_dropped++;
		FUNC4(xdpf);
	}

	return ret;
}