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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct page {int dummy; } ;
struct dpaa2_eth_priv {TYPE_2__* net_dev; } ;
struct dpaa2_eth_channel {int /*<<< orphan*/  dpio; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int DPAA2_ETH_BUFS_PER_CMD ; 
 int /*<<< orphan*/  DPAA2_ETH_RX_BUF_RAW_SIZE ; 
 int /*<<< orphan*/  DPAA2_ETH_RX_BUF_SIZE ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dpaa2_eth_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct dpaa2_eth_priv *priv,
		    struct dpaa2_eth_channel *ch, u16 bpid)
{
	struct device *dev = priv->net_dev->dev.parent;
	u64 buf_array[DPAA2_ETH_BUFS_PER_CMD];
	struct page *page;
	dma_addr_t addr;
	int i, err;

	for (i = 0; i < DPAA2_ETH_BUFS_PER_CMD; i++) {
		/* Allocate buffer visible to WRIOP + skb shared info +
		 * alignment padding
		 */
		/* allocate one page for each Rx buffer. WRIOP sees
		 * the entire page except for a tailroom reserved for
		 * skb shared info
		 */
		page = FUNC2(0);
		if (!page)
			goto err_alloc;

		addr = FUNC3(dev, page, 0, DPAA2_ETH_RX_BUF_SIZE,
				    DMA_BIDIRECTIONAL);
		if (FUNC8(FUNC4(dev, addr)))
			goto err_map;

		buf_array[i] = addr;

		/* tracing point */
		FUNC7(priv->net_dev,
					 page, DPAA2_ETH_RX_BUF_RAW_SIZE,
					 addr, DPAA2_ETH_RX_BUF_SIZE,
					 bpid);
	}

release_bufs:
	/* In case the portal is busy, retry until successful */
	while ((err = FUNC5(ch->dpio, bpid,
					       buf_array, i)) == -EBUSY)
		FUNC1();

	/* If release command failed, clean up and bail out;
	 * not much else we can do about it
	 */
	if (err) {
		FUNC6(priv, buf_array, i);
		return 0;
	}

	return i;

err_map:
	FUNC0(page, 0);
err_alloc:
	/* If we managed to allocate at least some buffers,
	 * release them to hardware
	 */
	if (i)
		goto release_bufs;

	return 0;
}