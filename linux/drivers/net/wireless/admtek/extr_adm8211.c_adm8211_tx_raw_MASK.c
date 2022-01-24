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
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {unsigned int cur_tx; int dirty_tx; int tx_ring_size; int /*<<< orphan*/  lock; TYPE_2__* tx_ring; TYPE_1__* tx_buffers; int /*<<< orphan*/  pdev; } ;
typedef  int dma_addr_t ;
struct TYPE_4__ {void* status; void* length; void* buffer1; } ;
struct TYPE_3__ {int mapping; size_t hdrlen; struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int TDES0_CONTROL_OWN ; 
 int TDES1_CONTROL_FS ; 
 int TDES1_CONTROL_IC ; 
 int TDES1_CONTROL_LS ; 
 int TDES1_CONTROL_TER ; 
 int /*<<< orphan*/  TDR ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *dev, struct sk_buff *skb,
			   u16 plcp_signal,
			   size_t hdrlen)
{
	struct adm8211_priv *priv = dev->priv;
	unsigned long flags;
	dma_addr_t mapping;
	unsigned int entry;
	u32 flag;

	mapping = FUNC4(priv->pdev, skb->data, skb->len,
				 PCI_DMA_TODEVICE);
	if (FUNC3(priv->pdev, mapping))
		return -ENOMEM;

	FUNC5(&priv->lock, flags);

	if (priv->cur_tx - priv->dirty_tx == priv->tx_ring_size / 2)
		flag = TDES1_CONTROL_IC | TDES1_CONTROL_LS | TDES1_CONTROL_FS;
	else
		flag = TDES1_CONTROL_LS | TDES1_CONTROL_FS;

	if (priv->cur_tx - priv->dirty_tx == priv->tx_ring_size - 2)
		FUNC2(dev, 0);

	entry = priv->cur_tx % priv->tx_ring_size;

	priv->tx_buffers[entry].skb = skb;
	priv->tx_buffers[entry].mapping = mapping;
	priv->tx_buffers[entry].hdrlen = hdrlen;
	priv->tx_ring[entry].buffer1 = FUNC1(mapping);

	if (entry == priv->tx_ring_size - 1)
		flag |= TDES1_CONTROL_TER;
	priv->tx_ring[entry].length = FUNC1(flag | skb->len);

	/* Set TX rate (SIGNAL field in PLCP PPDU format) */
	flag = TDES0_CONTROL_OWN | (plcp_signal << 20) | 8 /* ? */;
	priv->tx_ring[entry].status = FUNC1(flag);

	priv->cur_tx++;

	FUNC6(&priv->lock, flags);

	/* Trigger transmit poll */
	FUNC0(TDR, 0);

	return 0;
}