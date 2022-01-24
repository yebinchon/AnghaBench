#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct p54p_ring_control {void** host_idx; struct p54p_desc* tx_data; } ;
struct p54p_priv {int /*<<< orphan*/  lock; struct sk_buff** tx_buf_data; TYPE_1__* pdev; struct p54p_ring_control* ring_control; } ;
struct p54p_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  len; int /*<<< orphan*/  device_addr; void* host_addr; } ;
struct p54_hdr {int /*<<< orphan*/  req_id; } ;
struct ieee80211_hw {struct p54p_priv* priv; } ;
typedef  size_t dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t FUNC0 (struct p54p_desc*) ; 
 size_t ISL38XX_DEV_INT_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  dev_int ; 
 size_t FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,size_t) ; 
 size_t FUNC9 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(struct ieee80211_hw *dev, struct sk_buff *skb)
{
	unsigned long flags;
	struct p54p_priv *priv = dev->priv;
	struct p54p_ring_control *ring_control = priv->ring_control;
	struct p54p_desc *desc;
	dma_addr_t mapping;
	u32 idx, i;

	FUNC10(&priv->lock, flags);
	idx = FUNC6(ring_control->host_idx[1]);
	i = idx % FUNC0(ring_control->tx_data);

	mapping = FUNC9(priv->pdev, skb->data, skb->len,
				 PCI_DMA_TODEVICE);
	if (FUNC8(priv->pdev, mapping)) {
		FUNC11(&priv->lock, flags);
		FUNC7(dev, skb);
		FUNC5(&priv->pdev->dev, "TX DMA mapping error\n");
		return ;
	}
	priv->tx_buf_data[i] = skb;

	desc = &ring_control->tx_data[i];
	desc->host_addr = FUNC4(mapping);
	desc->device_addr = ((struct p54_hdr *)skb->data)->req_id;
	desc->len = FUNC3(skb->len);
	desc->flags = 0;

	FUNC12();
	ring_control->host_idx[1] = FUNC4(idx + 1);
	FUNC11(&priv->lock, flags);

	FUNC2(dev_int, FUNC4(ISL38XX_DEV_INT_UPDATE));
	FUNC1(dev_int);
}