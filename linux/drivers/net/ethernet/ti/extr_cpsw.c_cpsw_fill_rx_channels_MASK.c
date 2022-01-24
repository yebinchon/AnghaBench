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
struct page_pool {int dummy; } ;
struct page {int dummy; } ;
struct cpsw_priv {int /*<<< orphan*/  ndev; struct cpsw_common* cpsw; } ;
struct cpsw_meta_xdp {int ch; int /*<<< orphan*/  ndev; } ;
struct cpsw_common {int rx_ch_num; int /*<<< orphan*/  rx_packet_max; TYPE_1__* rxv; struct page_pool** page_pool; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  ch; } ;

/* Variables and functions */
 scalar_t__ CPSW_HEADROOM ; 
 int CPSW_XMETA_OFFSET ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct page*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_priv*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct cpsw_priv*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  ifup ; 
 struct cpsw_meta_xdp* FUNC4 (struct page*) ; 
 struct page* FUNC5 (struct page_pool*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page_pool*,struct page*) ; 

int FUNC8(struct cpsw_priv *priv)
{
	struct cpsw_common *cpsw = priv->cpsw;
	struct cpsw_meta_xdp *xmeta;
	struct page_pool *pool;
	struct page *page;
	int ch_buf_num;
	int ch, i, ret;
	dma_addr_t dma;

	for (ch = 0; ch < cpsw->rx_ch_num; ch++) {
		pool = cpsw->page_pool[ch];
		ch_buf_num = FUNC0(cpsw->rxv[ch].ch);
		for (i = 0; i < ch_buf_num; i++) {
			page = FUNC5(pool);
			if (!page) {
				FUNC2(priv, ifup, "allocate rx page err\n");
				return -ENOMEM;
			}

			xmeta = FUNC4(page) + CPSW_XMETA_OFFSET;
			xmeta->ndev = priv->ndev;
			xmeta->ch = ch;

			dma = FUNC6(page) + CPSW_HEADROOM;
			ret = FUNC1(cpsw->rxv[ch].ch,
							    page, dma,
							    cpsw->rx_packet_max,
							    0);
			if (ret < 0) {
				FUNC2(priv, ifup,
					 "cannot submit page to channel %d rx, error %d\n",
					 ch, ret);
				FUNC7(pool, page);
				return ret;
			}
		}

		FUNC3(priv, ifup, "ch %d rx, submitted %d descriptors\n",
			  ch, ch_buf_num);
	}

	return 0;
}