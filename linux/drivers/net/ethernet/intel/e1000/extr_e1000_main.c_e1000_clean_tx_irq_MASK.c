#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int tx_bytes; unsigned int tx_packets; } ;
struct net_device {TYPE_4__ stats; } ;
struct e1000_tx_ring {unsigned int next_to_clean; unsigned int count; struct e1000_tx_buffer* buffer_info; int /*<<< orphan*/  next_to_use; scalar_t__ tdt; scalar_t__ tdh; } ;
struct TYPE_6__ {int /*<<< orphan*/  status; } ;
struct TYPE_7__ {int data; TYPE_2__ fields; } ;
struct e1000_tx_desc {TYPE_3__ upper; } ;
struct e1000_tx_buffer {unsigned int next_to_watch; scalar_t__ time_stamp; TYPE_1__* skb; scalar_t__ bytecount; scalar_t__ segs; } ;
struct e1000_hw {scalar_t__ hw_addr; } ;
struct e1000_adapter {int detect_tx_hung; int tx_timeout_factor; unsigned int total_tx_bytes; unsigned int total_tx_packets; struct e1000_tx_ring* tx_ring; int /*<<< orphan*/  restart_queue; int /*<<< orphan*/  flags; struct net_device* netdev; struct e1000_hw hw; } ;
struct TYPE_5__ {scalar_t__ len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct e1000_tx_ring*) ; 
 int E1000_STATUS_TXOFF ; 
 int /*<<< orphan*/  E1000_TXD_STAT_DD ; 
 struct e1000_tx_desc* FUNC1 (struct e1000_tx_ring,unsigned int) ; 
 int HZ ; 
 int /*<<< orphan*/  STATUS ; 
 scalar_t__ TX_WAKE_THRESHOLD ; 
 int /*<<< orphan*/  __E1000_DOWN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_adapter*,struct e1000_tx_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,scalar_t__,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static bool FUNC19(struct e1000_adapter *adapter,
			       struct e1000_tx_ring *tx_ring)
{
	struct e1000_hw *hw = &adapter->hw;
	struct net_device *netdev = adapter->netdev;
	struct e1000_tx_desc *tx_desc, *eop_desc;
	struct e1000_tx_buffer *buffer_info;
	unsigned int i, eop;
	unsigned int count = 0;
	unsigned int total_tx_bytes = 0, total_tx_packets = 0;
	unsigned int bytes_compl = 0, pkts_compl = 0;

	i = tx_ring->next_to_clean;
	eop = tx_ring->buffer_info[i].next_to_watch;
	eop_desc = FUNC1(*tx_ring, eop);

	while ((eop_desc->upper.data & FUNC2(E1000_TXD_STAT_DD)) &&
	       (count < tx_ring->count)) {
		bool cleaned = false;
		FUNC3();	/* read buffer_info after eop_desc */
		for ( ; !cleaned; count++) {
			tx_desc = FUNC1(*tx_ring, i);
			buffer_info = &tx_ring->buffer_info[i];
			cleaned = (i == eop);

			if (cleaned) {
				total_tx_packets += buffer_info->segs;
				total_tx_bytes += buffer_info->bytecount;
				if (buffer_info->skb) {
					bytes_compl += buffer_info->skb->len;
					pkts_compl++;
				}

			}
			FUNC5(adapter, buffer_info);
			tx_desc->upper.data = 0;

			if (FUNC18(++i == tx_ring->count))
				i = 0;
		}

		eop = tx_ring->buffer_info[i].next_to_watch;
		eop_desc = FUNC1(*tx_ring, eop);
	}

	/* Synchronize with E1000_DESC_UNUSED called from e1000_xmit_frame,
	 * which will reuse the cleaned buffers.
	 */
	FUNC15(&tx_ring->next_to_clean, i);

	FUNC8(netdev, pkts_compl, bytes_compl);

#define TX_WAKE_THRESHOLD 32
	if (FUNC18(count && FUNC9(netdev) &&
		     FUNC0(tx_ring) >= TX_WAKE_THRESHOLD)) {
		/* Make sure that anybody stopping the queue after this
		 * sees the new next_to_clean.
		 */
		FUNC14();

		if (FUNC10(netdev) &&
		    !(FUNC16(__E1000_DOWN, &adapter->flags))) {
			FUNC12(netdev);
			++adapter->restart_queue;
		}
	}

	if (adapter->detect_tx_hung) {
		/* Detect a transmit hang in hardware, this serializes the
		 * check with the clearing of time_stamp and movement of i
		 */
		adapter->detect_tx_hung = false;
		if (tx_ring->buffer_info[eop].time_stamp &&
		    FUNC17(jiffies, tx_ring->buffer_info[eop].time_stamp +
			       (adapter->tx_timeout_factor * HZ)) &&
		    !(FUNC7(STATUS) & E1000_STATUS_TXOFF)) {

			/* detected Tx unit hang */
			FUNC6(drv, "Detected Tx Unit Hang\n"
			      "  Tx Queue             <%lu>\n"
			      "  TDH                  <%x>\n"
			      "  TDT                  <%x>\n"
			      "  next_to_use          <%x>\n"
			      "  next_to_clean        <%x>\n"
			      "buffer_info[next_to_clean]\n"
			      "  time_stamp           <%lx>\n"
			      "  next_to_watch        <%x>\n"
			      "  jiffies              <%lx>\n"
			      "  next_to_watch.status <%x>\n",
				(unsigned long)(tx_ring - adapter->tx_ring),
				FUNC13(hw->hw_addr + tx_ring->tdh),
				FUNC13(hw->hw_addr + tx_ring->tdt),
				tx_ring->next_to_use,
				tx_ring->next_to_clean,
				tx_ring->buffer_info[eop].time_stamp,
				eop,
				jiffies,
				eop_desc->upper.fields.status);
			FUNC4(adapter);
			FUNC11(netdev);
		}
	}
	adapter->total_tx_bytes += total_tx_bytes;
	adapter->total_tx_packets += total_tx_packets;
	netdev->stats.tx_bytes += total_tx_bytes;
	netdev->stats.tx_packets += total_tx_packets;
	return count < tx_ring->count;
}