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
typedef  int u32 ;
struct qlcnic_host_tx_ring {int producer; int /*<<< orphan*/  txq; int /*<<< orphan*/  num_desc; int /*<<< orphan*/ * desc_head; struct qlcnic_cmd_buffer* cmd_buf_arr; } ;
struct qlcnic_cmd_buffer {scalar_t__ frag_count; int /*<<< orphan*/ * skb; } ;
struct TYPE_2__ {int /*<<< orphan*/  xmit_off; } ;
struct qlcnic_adapter {TYPE_1__ stats; struct qlcnic_host_tx_ring* tx_ring; int /*<<< orphan*/  state; } ;
struct cmd_desc_type0 {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int TX_STOP_THRESH ; 
 int /*<<< orphan*/  __QLCNIC_FW_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cmd_desc_type0*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qlcnic_host_tx_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_host_tx_ring*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct qlcnic_adapter *adapter,
		struct cmd_desc_type0 *cmd_desc_arr, int nr_desc)
{
	u32 i, producer;
	struct qlcnic_cmd_buffer *pbuf;
	struct cmd_desc_type0 *cmd_desc;
	struct qlcnic_host_tx_ring *tx_ring;

	i = 0;

	if (!FUNC9(__QLCNIC_FW_ATTACHED, &adapter->state))
		return -EIO;

	tx_ring = &adapter->tx_ring[0];
	FUNC0(tx_ring->txq);

	producer = tx_ring->producer;

	if (nr_desc >= FUNC6(tx_ring)) {
		FUNC4(tx_ring->txq);
		FUNC8();
		if (FUNC6(tx_ring) > nr_desc) {
			if (FUNC6(tx_ring) > TX_STOP_THRESH)
				FUNC5(tx_ring->txq);
		} else {
			adapter->stats.xmit_off++;
			FUNC1(tx_ring->txq);
			return -EBUSY;
		}
	}

	do {
		cmd_desc = &cmd_desc_arr[i];

		pbuf = &tx_ring->cmd_buf_arr[producer];
		pbuf->skb = NULL;
		pbuf->frag_count = 0;

		FUNC3(&tx_ring->desc_head[producer],
		       cmd_desc, sizeof(struct cmd_desc_type0));

		producer = FUNC2(producer, tx_ring->num_desc);
		i++;

	} while (i != nr_desc);

	tx_ring->producer = producer;

	FUNC7(tx_ring);

	FUNC1(tx_ring->txq);

	return 0;
}