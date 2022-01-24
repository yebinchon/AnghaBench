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
typedef  size_t u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/  csum; int /*<<< orphan*/  ip_summed; } ;
struct net_device {int dummy; } ;
struct napi_struct {int dummy; } ;
struct gve_rx_slot_page_info {int /*<<< orphan*/  page; } ;
struct TYPE_8__ {int /*<<< orphan*/ * data_ring; TYPE_3__* qpl; struct gve_rx_slot_page_info* page_info; } ;
struct gve_rx_ring {size_t ntfy_id; TYPE_4__ data; struct gve_priv* gve; } ;
struct gve_rx_desc {int flags_seq; int /*<<< orphan*/  rss_hash; scalar_t__ csum; int /*<<< orphan*/  len; } ;
struct gve_priv {scalar_t__ rx_copybreak; TYPE_2__* pdev; struct net_device* dev; TYPE_1__* ntfy_blocks; } ;
typedef  int netdev_features_t ;
struct TYPE_7__ {int /*<<< orphan*/ * page_buses; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct napi_struct napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_COMPLETE ; 
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int GVE_RXF_ERR ; 
 scalar_t__ GVE_RX_PAD ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_RXHASH ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct sk_buff* FUNC9 (struct net_device*,struct napi_struct*,struct gve_rx_slot_page_info*,scalar_t__) ; 
 struct sk_buff* FUNC10 (struct net_device*,struct napi_struct*,struct gve_rx_slot_page_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct gve_rx_slot_page_info*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC14 (struct napi_struct*,struct sk_buff*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static bool FUNC19(struct gve_rx_ring *rx, struct gve_rx_desc *rx_desc,
		   netdev_features_t feat, u32 idx)
{
	struct gve_rx_slot_page_info *page_info;
	struct gve_priv *priv = rx->gve;
	struct napi_struct *napi = &priv->ntfy_blocks[rx->ntfy_id].napi;
	struct net_device *dev = priv->dev;
	struct sk_buff *skb;
	int pagecount;
	u16 len;

	/* drop this packet */
	if (FUNC18(rx_desc->flags_seq & GVE_RXF_ERR))
		return true;

	len = FUNC1(rx_desc->len) - GVE_RX_PAD;
	page_info = &rx->data.page_info[idx];
	FUNC4(&priv->pdev->dev, rx->data.qpl->page_buses[idx],
				PAGE_SIZE, DMA_FROM_DEVICE);

	/* gvnic can only receive into registered segments. If the buffer
	 * can't be recycled, our only choice is to copy the data out of
	 * it so that we can return it to the device.
	 */

	if (PAGE_SIZE == 4096) {
		if (len <= priv->rx_copybreak) {
			/* Just copy small packets */
			skb = FUNC10(dev, napi, page_info, len);
			goto have_skb;
		}
		if (FUNC18(!FUNC6(dev))) {
			skb = FUNC10(dev, napi, page_info, len);
			goto have_skb;
		}
		pagecount = FUNC15(page_info->page);
		if (pagecount == 1) {
			/* No part of this page is used by any SKBs; we attach
			 * the page fragment to a new SKB and pass it up the
			 * stack.
			 */
			skb = FUNC9(dev, napi, page_info, len);
			if (!skb)
				return true;
			/* Make sure the kernel stack can't release the page */
			FUNC5(page_info->page);
			/* "flip" to other packet buffer on this page */
			FUNC11(page_info, &rx->data.data_ring[idx]);
		} else if (pagecount >= 2) {
			/* We have previously passed the other half of this
			 * page up the stack, but it has not yet been freed.
			 */
			skb = FUNC10(dev, napi, page_info, len);
		} else {
			FUNC0(pagecount < 1, "Pagecount should never be < 1");
			return false;
		}
	} else {
		skb = FUNC10(dev, napi, page_info, len);
	}

have_skb:
	/* We didn't manage to allocate an skb but we haven't had any
	 * reset worthy failures.
	 */
	if (!skb)
		return true;

	if (FUNC12(feat & NETIF_F_RXCSUM)) {
		/* NIC passes up the partial sum */
		if (rx_desc->csum)
			skb->ip_summed = CHECKSUM_COMPLETE;
		else
			skb->ip_summed = CHECKSUM_NONE;
		skb->csum = FUNC3(rx_desc->csum);
	}

	/* parse flags & pass relevant info up */
	if (FUNC12(feat & NETIF_F_RXHASH) &&
	    FUNC7(rx_desc->flags_seq))
		FUNC17(skb, FUNC2(rx_desc->rss_hash),
			     FUNC8(rx_desc->flags_seq));

	if (FUNC16(skb))
		FUNC13(napi);
	else
		FUNC14(napi, skb);
	return true;
}