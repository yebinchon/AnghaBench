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
struct nx_host_tx_ring {int num_desc; struct netxen_cmd_buffer* cmd_buf_arr; } ;
struct netxen_skb_frag {long long dma; int /*<<< orphan*/  length; } ;
struct netxen_cmd_buffer {int frag_count; int /*<<< orphan*/ * skb; struct netxen_skb_frag* frag_array; } ;
struct netxen_adapter {int /*<<< orphan*/  tx_clean_lock; int /*<<< orphan*/  pdev; struct nx_host_tx_ring* tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct netxen_adapter *adapter)
{
	struct netxen_cmd_buffer *cmd_buf;
	struct netxen_skb_frag *buffrag;
	int i, j;
	struct nx_host_tx_ring *tx_ring = adapter->tx_ring;

	FUNC3(&adapter->tx_clean_lock);
	cmd_buf = tx_ring->cmd_buf_arr;
	for (i = 0; i < tx_ring->num_desc; i++) {
		buffrag = cmd_buf->frag_array;
		if (buffrag->dma) {
			FUNC2(adapter->pdev, buffrag->dma,
					 buffrag->length, PCI_DMA_TODEVICE);
			buffrag->dma = 0ULL;
		}
		for (j = 1; j < cmd_buf->frag_count; j++) {
			buffrag++;
			if (buffrag->dma) {
				FUNC1(adapter->pdev, buffrag->dma,
					       buffrag->length,
					       PCI_DMA_TODEVICE);
				buffrag->dma = 0ULL;
			}
		}
		if (cmd_buf->skb) {
			FUNC0(cmd_buf->skb);
			cmd_buf->skb = NULL;
		}
		cmd_buf++;
	}
	FUNC4(&adapter->tx_clean_lock);
}