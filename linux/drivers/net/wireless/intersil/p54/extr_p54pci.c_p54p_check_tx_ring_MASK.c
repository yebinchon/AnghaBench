#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u32 ;
struct sk_buff {int dummy; } ;
struct p54p_ring_control {scalar_t__* device_idx; } ;
struct p54p_priv {int /*<<< orphan*/  pdev; struct p54p_ring_control* ring_control; } ;
struct p54p_desc {scalar_t__ flags; scalar_t__ len; scalar_t__ device_addr; scalar_t__ host_addr; } ;
struct ieee80211_hw {struct p54p_priv* priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 size_t FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *dev, u32 *index,
	int ring_index, struct p54p_desc *ring, u32 ring_limit,
	struct sk_buff **tx_buf)
{
	struct p54p_priv *priv = dev->priv;
	struct p54p_ring_control *ring_control = priv->ring_control;
	struct p54p_desc *desc;
	struct sk_buff *skb;
	u32 idx, i;

	i = (*index) % ring_limit;
	(*index) = idx = FUNC2(ring_control->device_idx[ring_index]);
	idx %= ring_limit;

	while (i != idx) {
		desc = &ring[i];

		skb = tx_buf[i];
		tx_buf[i] = NULL;

		FUNC4(priv->pdev, FUNC2(desc->host_addr),
				 FUNC1(desc->len), PCI_DMA_TODEVICE);

		desc->host_addr = 0;
		desc->device_addr = 0;
		desc->len = 0;
		desc->flags = 0;

		if (skb && FUNC0(skb))
			FUNC3(dev, skb);

		i++;
		i %= ring_limit;
	}
}