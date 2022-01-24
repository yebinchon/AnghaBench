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
typedef  size_t u16 ;
struct atl1_tpd_ring {size_t count; int /*<<< orphan*/  next_to_clean; struct atl1_buffer* buffer_info; } ;
struct atl1_buffer {int /*<<< orphan*/ * skb; scalar_t__ dma; int /*<<< orphan*/  length; } ;
struct TYPE_4__ {TYPE_1__* cmb; } ;
struct atl1_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  pdev; TYPE_2__ cmb; struct atl1_tpd_ring tpd_ring; } ;
struct TYPE_3__ {int /*<<< orphan*/  tpd_cons_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct atl1_adapter *adapter)
{
	struct atl1_tpd_ring *tpd_ring = &adapter->tpd_ring;
	struct atl1_buffer *buffer_info;
	u16 sw_tpd_next_to_clean;
	u16 cmb_tpd_next_to_clean;
	int count = 0;

	sw_tpd_next_to_clean = FUNC0(&tpd_ring->next_to_clean);
	cmb_tpd_next_to_clean = FUNC3(adapter->cmb.cmb->tpd_cons_idx);

	while (cmb_tpd_next_to_clean != sw_tpd_next_to_clean) {
		buffer_info = &tpd_ring->buffer_info[sw_tpd_next_to_clean];
		if (buffer_info->dma) {
			FUNC7(adapter->pdev, buffer_info->dma,
				       buffer_info->length, PCI_DMA_TODEVICE);
			buffer_info->dma = 0;
		}

		if (buffer_info->skb) {
			FUNC2(buffer_info->skb);
			buffer_info->skb = NULL;
		}

		if (++sw_tpd_next_to_clean == tpd_ring->count)
			sw_tpd_next_to_clean = 0;

		count++;
	}
	FUNC1(&tpd_ring->next_to_clean, sw_tpd_next_to_clean);

	if (FUNC5(adapter->netdev) &&
	    FUNC4(adapter->netdev))
		FUNC6(adapter->netdev);

	return count;
}