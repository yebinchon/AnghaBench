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
struct wil_ring {TYPE_4__* ctx; TYPE_2__* va; } ;
struct wil6210_priv {unsigned int rx_buf_len; } ;
struct TYPE_7__ {int d0; int /*<<< orphan*/  length; scalar_t__ status; int /*<<< orphan*/  addr; } ;
struct vring_rx_desc {TYPE_3__ dma; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; int /*<<< orphan*/  ip_summed; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {struct sk_buff* skb; } ;
struct TYPE_5__ {struct vring_rx_desc legacy; } ;
struct TYPE_6__ {TYPE_1__ rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 unsigned int ETH_HLEN ; 
 int RX_DMA_D0_CMD_DMA_IT ; 
 int RX_DMA_D0_CMD_DMA_RT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct sk_buff* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 () ; 
 struct device* FUNC10 (struct wil6210_priv*) ; 

__attribute__((used)) static int FUNC11(struct wil6210_priv *wil, struct wil_ring *vring,
			       u32 i, int headroom)
{
	struct device *dev = FUNC10(wil);
	unsigned int sz = wil->rx_buf_len + ETH_HLEN + FUNC9();
	struct vring_rx_desc dd, *d = &dd;
	volatile struct vring_rx_desc *_d = &vring->va[i].rx.legacy;
	dma_addr_t pa;
	struct sk_buff *skb = FUNC1(sz + headroom);

	if (FUNC7(!skb))
		return -ENOMEM;

	FUNC6(skb, headroom);
	FUNC5(skb, sz);

	/**
	 * Make sure that the network stack calculates checksum for packets
	 * which failed the HW checksum calculation
	 */
	skb->ip_summed = CHECKSUM_NONE;

	pa = FUNC2(dev, skb->data, skb->len, DMA_FROM_DEVICE);
	if (FUNC7(FUNC3(dev, pa))) {
		FUNC4(skb);
		return -ENOMEM;
	}

	d->dma.d0 = RX_DMA_D0_CMD_DMA_RT | RX_DMA_D0_CMD_DMA_IT;
	FUNC8(&d->dma.addr, pa);
	/* ip_length don't care */
	/* b11 don't care */
	/* error don't care */
	d->dma.status = 0; /* BIT(0) should be 0 for HW_OWNED */
	d->dma.length = FUNC0(sz);
	*_d = *d;
	vring->ctx[i].skb = skb;

	return 0;
}