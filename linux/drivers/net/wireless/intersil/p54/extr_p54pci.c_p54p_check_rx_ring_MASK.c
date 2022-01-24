#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct p54p_ring_control {int /*<<< orphan*/ * device_idx; } ;
struct TYPE_5__ {scalar_t__ rx_mtu; } ;
struct p54p_priv {TYPE_1__ common; TYPE_2__* pdev; struct p54p_ring_control* ring_control; } ;
struct p54p_desc {int /*<<< orphan*/  len; int /*<<< orphan*/  host_addr; } ;
struct ieee80211_hw {struct p54p_priv* priv; } ;
typedef  void* dma_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int,struct p54p_desc*,size_t,struct sk_buff**,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct ieee80211_hw *dev, u32 *index,
	int ring_index, struct p54p_desc *ring, u32 ring_limit,
	struct sk_buff **rx_buf)
{
	struct p54p_priv *priv = dev->priv;
	struct p54p_ring_control *ring_control = priv->ring_control;
	struct p54p_desc *desc;
	u32 idx, i;

	i = (*index) % ring_limit;
	(*index) = idx = FUNC4(ring_control->device_idx[ring_index]);
	idx %= ring_limit;
	while (i != idx) {
		u16 len;
		struct sk_buff *skb;
		dma_addr_t dma_addr;
		desc = &ring[i];
		len = FUNC3(desc->len);
		skb = rx_buf[i];

		if (!skb) {
			i++;
			i %= ring_limit;
			continue;
		}

		if (FUNC13(len > priv->common.rx_mtu)) {
			if (FUNC5())
				FUNC2(&priv->pdev->dev, "rx'd frame size "
					"exceeds length threshold.\n");

			len = priv->common.rx_mtu;
		}
		dma_addr = FUNC4(desc->host_addr);
		FUNC8(priv->pdev, dma_addr,
			priv->common.rx_mtu + 32, PCI_DMA_FROMDEVICE);
		FUNC11(skb, len);

		if (FUNC6(dev, skb)) {
			FUNC10(priv->pdev, dma_addr,
				priv->common.rx_mtu + 32, PCI_DMA_FROMDEVICE);
			rx_buf[i] = NULL;
			desc->host_addr = FUNC1(0);
		} else {
			FUNC12(skb, 0);
			FUNC9(priv->pdev, dma_addr,
				priv->common.rx_mtu + 32, PCI_DMA_FROMDEVICE);
			desc->len = FUNC0(priv->common.rx_mtu + 32);
		}

		i++;
		i %= ring_limit;
	}

	FUNC7(dev, ring_index, ring, ring_limit, rx_buf, *index);
}