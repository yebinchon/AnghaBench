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
typedef  size_t u32 ;
struct qlcnic_skb_frag {unsigned long long dma; int /*<<< orphan*/  length; } ;
struct TYPE_2__ {int /*<<< orphan*/  xmit_on; int /*<<< orphan*/  xmit_finished; } ;
struct qlcnic_host_tx_ring {size_t sw_consumer; int /*<<< orphan*/  tx_clean_lock; int /*<<< orphan*/ * hw_consumer; TYPE_1__ tx_stats; int /*<<< orphan*/  txq; int /*<<< orphan*/  num_desc; struct qlcnic_cmd_buffer* cmd_buf_arr; } ;
struct qlcnic_cmd_buffer {int frag_count; int /*<<< orphan*/ * skb; struct qlcnic_skb_frag* frag_array; } ;
struct qlcnic_adapter {scalar_t__ tx_timeo_cnt; struct net_device* netdev; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ TX_STOP_THRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct qlcnic_host_tx_ring*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct qlcnic_adapter *adapter,
				   struct qlcnic_host_tx_ring *tx_ring,
				   int budget)
{
	u32 sw_consumer, hw_consumer;
	int i, done, count = 0;
	struct qlcnic_cmd_buffer *buffer;
	struct pci_dev *pdev = adapter->pdev;
	struct net_device *netdev = adapter->netdev;
	struct qlcnic_skb_frag *frag;

	if (!FUNC11(&tx_ring->tx_clean_lock))
		return 1;

	sw_consumer = tx_ring->sw_consumer;
	hw_consumer = FUNC2(*(tx_ring->hw_consumer));

	while (sw_consumer != hw_consumer) {
		buffer = &tx_ring->cmd_buf_arr[sw_consumer];
		if (buffer->skb) {
			frag = &buffer->frag_array[0];
			FUNC8(pdev, frag->dma, frag->length,
					 PCI_DMA_TODEVICE);
			frag->dma = 0ULL;
			for (i = 1; i < buffer->frag_count; i++) {
				frag++;
				FUNC7(pdev, frag->dma, frag->length,
					       PCI_DMA_TODEVICE);
				frag->dma = 0ULL;
			}
			tx_ring->tx_stats.xmit_finished++;
			FUNC0(buffer->skb);
			buffer->skb = NULL;
		}

		sw_consumer = FUNC1(sw_consumer, tx_ring->num_desc);
		if (++count >= budget)
			break;
	}

	tx_ring->sw_consumer = sw_consumer;

	if (count && FUNC4(netdev)) {
		FUNC10();
		if (FUNC5(tx_ring->txq) &&
		    FUNC3(netdev)) {
			if (FUNC9(tx_ring) > TX_STOP_THRESH) {
				FUNC6(tx_ring->txq);
				tx_ring->tx_stats.xmit_on++;
			}
		}
		adapter->tx_timeo_cnt = 0;
	}
	/*
	 * If everything is freed up to consumer then check if the ring is full
	 * If the ring is full then check if more needs to be freed and
	 * schedule the call back again.
	 *
	 * This happens when there are 2 CPUs. One could be freeing and the
	 * other filling it. If the ring is full when we get out of here and
	 * the card has already interrupted the host then the host can miss the
	 * interrupt.
	 *
	 * There is still a possible race condition and the host could miss an
	 * interrupt. The card has to take care of this.
	 */
	hw_consumer = FUNC2(*(tx_ring->hw_consumer));
	done = (sw_consumer == hw_consumer);

	FUNC12(&tx_ring->tx_clean_lock);

	return done;
}