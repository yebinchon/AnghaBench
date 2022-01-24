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
typedef  int /*<<< orphan*/  u64 ;
struct e1000_tx_ring {int count; int next_to_use; int next_to_clean; struct e1000_tx_buffer* buffer_info; scalar_t__ desc; } ;
struct e1000_tx_desc {int dummy; } ;
struct e1000_tx_buffer {int /*<<< orphan*/  skb; scalar_t__ time_stamp; int /*<<< orphan*/  next_to_watch; int /*<<< orphan*/  length; scalar_t__ dma; } ;
struct e1000_rx_ring {int count; int next_to_use; int next_to_clean; struct e1000_rx_buffer* buffer_info; scalar_t__ desc; } ;
struct e1000_rx_desc {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct e1000_rx_buffer {TYPE_1__ rxbuf; scalar_t__ dma; } ;
struct TYPE_4__ {scalar_t__ hw_addr; } ;
struct e1000_adapter {TYPE_2__ hw; struct e1000_rx_ring* rx_ring; struct e1000_tx_ring* tx_ring; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 struct e1000_rx_desc* FUNC0 (struct e1000_rx_ring,int) ; 
 struct e1000_tx_desc* FUNC1 (struct e1000_tx_ring,int) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct e1000_adapter *adapter)
{
	/* this code doesn't handle multiple rings */
	struct e1000_tx_ring *tx_ring = adapter->tx_ring;
	struct e1000_rx_ring *rx_ring = adapter->rx_ring;
	int i;

	if (!FUNC4(adapter))
		return;

	/* Print Registers */
	FUNC2(adapter);

	/* transmit dump */
	FUNC7("TX Desc ring0 dump\n");

	/* Transmit Descriptor Formats - DEXT[29] is 0 (Legacy) or 1 (Extended)
	 *
	 * Legacy Transmit Descriptor
	 *   +--------------------------------------------------------------+
	 * 0 |         Buffer Address [63:0] (Reserved on Write Back)       |
	 *   +--------------------------------------------------------------+
	 * 8 | Special  |    CSS     | Status |  CMD    |  CSO   |  Length  |
	 *   +--------------------------------------------------------------+
	 *   63       48 47        36 35    32 31     24 23    16 15        0
	 *
	 * Extended Context Descriptor (DTYP=0x0) for TSO or checksum offload
	 *   63      48 47    40 39       32 31             16 15    8 7      0
	 *   +----------------------------------------------------------------+
	 * 0 |  TUCSE  | TUCS0  |   TUCSS   |     IPCSE       | IPCS0 | IPCSS |
	 *   +----------------------------------------------------------------+
	 * 8 |   MSS   | HDRLEN | RSV | STA | TUCMD | DTYP |      PAYLEN      |
	 *   +----------------------------------------------------------------+
	 *   63      48 47    40 39 36 35 32 31   24 23  20 19                0
	 *
	 * Extended Data Descriptor (DTYP=0x1)
	 *   +----------------------------------------------------------------+
	 * 0 |                     Buffer Address [63:0]                      |
	 *   +----------------------------------------------------------------+
	 * 8 | VLAN tag |  POPTS  | Rsvd | Status | Command | DTYP |  DTALEN  |
	 *   +----------------------------------------------------------------+
	 *   63       48 47     40 39  36 35    32 31     24 23  20 19        0
	 */
	FUNC7("Tc[desc]     [Ce CoCsIpceCoS] [MssHlRSCm0Plen] [bi->dma       ] leng  ntw timestmp         bi->skb\n");
	FUNC7("Td[desc]     [address 63:0  ] [VlaPoRSCm1Dlen] [bi->dma       ] leng  ntw timestmp         bi->skb\n");

	if (!FUNC6(adapter))
		goto rx_ring_summary;

	for (i = 0; tx_ring->desc && (i < tx_ring->count); i++) {
		struct e1000_tx_desc *tx_desc = FUNC1(*tx_ring, i);
		struct e1000_tx_buffer *buffer_info = &tx_ring->buffer_info[i];
		struct my_u { __le64 a; __le64 b; };
		struct my_u *u = (struct my_u *)tx_desc;
		const char *type;

		if (i == tx_ring->next_to_use && i == tx_ring->next_to_clean)
			type = "NTC/U";
		else if (i == tx_ring->next_to_use)
			type = "NTU";
		else if (i == tx_ring->next_to_clean)
			type = "NTC";
		else
			type = "";

		FUNC7("T%c[0x%03X]    %016llX %016llX %016llX %04X  %3X %016llX %p %s\n",
			((FUNC3(u->b) & (1<<20)) ? 'd' : 'c'), i,
			FUNC3(u->a), FUNC3(u->b),
			(u64)buffer_info->dma, buffer_info->length,
			buffer_info->next_to_watch,
			(u64)buffer_info->time_stamp, buffer_info->skb, type);
	}

rx_ring_summary:
	/* receive dump */
	FUNC7("\nRX Desc ring dump\n");

	/* Legacy Receive Descriptor Format
	 *
	 * +-----------------------------------------------------+
	 * |                Buffer Address [63:0]                |
	 * +-----------------------------------------------------+
	 * | VLAN Tag | Errors | Status 0 | Packet csum | Length |
	 * +-----------------------------------------------------+
	 * 63       48 47    40 39      32 31         16 15      0
	 */
	FUNC7("R[desc]      [address 63:0  ] [vl er S cks ln] [bi->dma       ] [bi->skb]\n");

	if (!FUNC5(adapter))
		goto exit;

	for (i = 0; rx_ring->desc && (i < rx_ring->count); i++) {
		struct e1000_rx_desc *rx_desc = FUNC0(*rx_ring, i);
		struct e1000_rx_buffer *buffer_info = &rx_ring->buffer_info[i];
		struct my_u { __le64 a; __le64 b; };
		struct my_u *u = (struct my_u *)rx_desc;
		const char *type;

		if (i == rx_ring->next_to_use)
			type = "NTU";
		else if (i == rx_ring->next_to_clean)
			type = "NTC";
		else
			type = "";

		FUNC7("R[0x%03X]     %016llX %016llX %016llX %p %s\n",
			i, FUNC3(u->a), FUNC3(u->b),
			(u64)buffer_info->dma, buffer_info->rxbuf.data, type);
	} /* for */

	/* dump the descriptor caches */
	/* rx */
	FUNC7("Rx descriptor cache in 64bit format\n");
	for (i = 0x6000; i <= 0x63FF ; i += 0x10) {
		FUNC7("R%04X: %08X|%08X %08X|%08X\n",
			i,
			FUNC8(adapter->hw.hw_addr + i+4),
			FUNC8(adapter->hw.hw_addr + i),
			FUNC8(adapter->hw.hw_addr + i+12),
			FUNC8(adapter->hw.hw_addr + i+8));
	}
	/* tx */
	FUNC7("Tx descriptor cache in 64bit format\n");
	for (i = 0x7000; i <= 0x73FF ; i += 0x10) {
		FUNC7("T%04X: %08X|%08X %08X|%08X\n",
			i,
			FUNC8(adapter->hw.hw_addr + i+4),
			FUNC8(adapter->hw.hw_addr + i),
			FUNC8(adapter->hw.hw_addr + i+12),
			FUNC8(adapter->hw.hw_addr + i+8));
	}
exit:
	return;
}