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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct skb_shared_hwtstamps {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  users; } ;
struct mlx4_wqe_data_seg {int /*<<< orphan*/  byte_count; int /*<<< orphan*/  addr; } ;
struct mlx4_en_tx_ring {int buf_size; struct mlx4_wqe_data_seg* buf; struct mlx4_en_tx_info* tx_info; } ;
struct mlx4_en_tx_info {int data_offset; int nr_maps; int nr_txbb; int /*<<< orphan*/  map0_byte_count; int /*<<< orphan*/  map0_dma; scalar_t__ linear; int /*<<< orphan*/  inl; struct sk_buff* skb; } ;
struct mlx4_en_tx_desc {int /*<<< orphan*/  byte_count; int /*<<< orphan*/  addr; } ;
struct mlx4_en_priv {int /*<<< orphan*/  ddev; int /*<<< orphan*/  mdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int LOG_TXBB_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct skb_shared_hwtstamps*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct skb_shared_hwtstamps*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

u32 FUNC10(struct mlx4_en_priv *priv,
			 struct mlx4_en_tx_ring *ring,
			 int index, u64 timestamp,
			 int napi_mode)
{
	struct mlx4_en_tx_info *tx_info = &ring->tx_info[index];
	struct mlx4_en_tx_desc *tx_desc = ring->buf + (index << LOG_TXBB_SIZE);
	struct mlx4_wqe_data_seg *data = (void *) tx_desc + tx_info->data_offset;
	void *end = ring->buf + ring->buf_size;
	struct sk_buff *skb = tx_info->skb;
	int nr_maps = tx_info->nr_maps;
	int i;

	/* We do not touch skb here, so prefetch skb->users location
	 * to speedup consume_skb()
	 */
	FUNC7(&skb->users);

	if (FUNC9(timestamp)) {
		struct skb_shared_hwtstamps hwts;

		FUNC5(priv->mdev, &hwts, timestamp);
		FUNC8(skb, &hwts);
	}

	if (!tx_info->inl) {
		if (tx_info->linear)
			FUNC3(priv->ddev,
					 tx_info->map0_dma,
					 tx_info->map0_byte_count,
					 PCI_DMA_TODEVICE);
		else
			FUNC2(priv->ddev,
				       tx_info->map0_dma,
				       tx_info->map0_byte_count,
				       PCI_DMA_TODEVICE);
		/* Optimize the common case when there are no wraparounds */
		if (FUNC4((void *)tx_desc +
			   (tx_info->nr_txbb << LOG_TXBB_SIZE) <= end)) {
			for (i = 1; i < nr_maps; i++) {
				data++;
				FUNC2(priv->ddev,
					(dma_addr_t)FUNC1(data->addr),
					FUNC0(data->byte_count),
					PCI_DMA_TODEVICE);
			}
		} else {
			if ((void *)data >= end)
				data = ring->buf + ((void *)data - end);

			for (i = 1; i < nr_maps; i++) {
				data++;
				/* Check for wraparound before unmapping */
				if ((void *) data >= end)
					data = ring->buf;
				FUNC2(priv->ddev,
					(dma_addr_t)FUNC1(data->addr),
					FUNC0(data->byte_count),
					PCI_DMA_TODEVICE);
			}
		}
	}
	FUNC6(skb, napi_mode);

	return tx_info->nr_txbb;
}