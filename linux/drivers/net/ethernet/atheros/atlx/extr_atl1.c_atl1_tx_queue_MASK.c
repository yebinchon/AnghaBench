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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct tx_packet_desc {int word2; int word3; int /*<<< orphan*/  buffer_addr; } ;
struct atl1_tpd_ring {scalar_t__ count; int /*<<< orphan*/  next_to_use; struct atl1_buffer* buffer_info; } ;
struct atl1_buffer {int /*<<< orphan*/  length; int /*<<< orphan*/  dma; } ;
struct atl1_adapter {struct atl1_tpd_ring tpd_ring; } ;

/* Variables and functions */
 struct tx_packet_desc* FUNC0 (struct atl1_tpd_ring*,scalar_t__) ; 
 int TPD_BUFLEN_MASK ; 
 int TPD_BUFLEN_SHIFT ; 
 int TPD_EOP_SHIFT ; 
 int TPD_HDRFLAG_SHIFT ; 
 int TPD_SEGMENT_EN_MASK ; 
 int TPD_SEGMENT_EN_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tx_packet_desc*,struct tx_packet_desc*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct atl1_adapter *adapter, u16 count,
       struct tx_packet_desc *ptpd)
{
	struct atl1_tpd_ring *tpd_ring = &adapter->tpd_ring;
	struct atl1_buffer *buffer_info;
	struct tx_packet_desc *tpd;
	u16 j;
	u32 val;
	u16 next_to_use = (u16) FUNC1(&tpd_ring->next_to_use);

	for (j = 0; j < count; j++) {
		buffer_info = &tpd_ring->buffer_info[next_to_use];
		tpd = FUNC0(&adapter->tpd_ring, next_to_use);
		if (tpd != ptpd)
			FUNC5(tpd, ptpd, sizeof(struct tx_packet_desc));
		tpd->buffer_addr = FUNC4(buffer_info->dma);
		tpd->word2 &= ~(TPD_BUFLEN_MASK << TPD_BUFLEN_SHIFT);
		tpd->word2 |= (FUNC3(buffer_info->length) &
			TPD_BUFLEN_MASK) << TPD_BUFLEN_SHIFT;

		/*
		 * if this is the first packet in a TSO chain, set
		 * TPD_HDRFLAG, otherwise, clear it.
		 */
		val = (tpd->word3 >> TPD_SEGMENT_EN_SHIFT) &
			TPD_SEGMENT_EN_MASK;
		if (val) {
			if (!j)
				tpd->word3 |= 1 << TPD_HDRFLAG_SHIFT;
			else
				tpd->word3 &= ~(1 << TPD_HDRFLAG_SHIFT);
		}

		if (j == (count - 1))
			tpd->word3 |= 1 << TPD_EOP_SHIFT;

		if (++next_to_use == tpd_ring->count)
			next_to_use = 0;
	}
	/*
	 * Force memory writes to complete before letting h/w
	 * know there are new descriptors to fetch.  (Only
	 * applicable for weak-ordered memory model archs,
	 * such as IA-64).
	 */
	FUNC6();

	FUNC2(&tpd_ring->next_to_use, next_to_use);
}