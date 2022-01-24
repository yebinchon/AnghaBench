#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct sw_rx_data {size_t mapping; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {TYPE_4__* xdp; } ;
struct qede_tx_queue {size_t sw_tx_prod; int num_tx_buffers; TYPE_5__ sw_tx_ring; int /*<<< orphan*/  tx_pbl; int /*<<< orphan*/  stopped_cnt; } ;
struct qede_fastpath {int xdp_xmit; struct qede_tx_queue* xdp_tx; } ;
struct qede_dev {TYPE_3__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  bitfields; } ;
struct TYPE_7__ {int nbds; int /*<<< orphan*/  bitfields; TYPE_1__ bd_flags; } ;
struct eth_tx_1st_bd {TYPE_2__ data; } ;
struct TYPE_9__ {size_t mapping; int /*<<< orphan*/  page; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eth_tx_1st_bd*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_TX_1ST_BD_FLAGS_START_BD_SHIFT ; 
 size_t ETH_TX_DATA_1ST_BD_PKT_LEN_MASK ; 
 size_t ETH_TX_DATA_1ST_BD_PKT_LEN_SHIFT ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eth_tx_1st_bd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct qede_dev *edev, struct qede_fastpath *fp,
			 struct sw_rx_data *metadata, u16 padding, u16 length)
{
	struct qede_tx_queue *txq = fp->xdp_tx;
	struct eth_tx_1st_bd *first_bd;
	u16 idx = txq->sw_tx_prod;
	u16 val;

	if (!FUNC5(&txq->tx_pbl)) {
		txq->stopped_cnt++;
		return -ENOMEM;
	}

	first_bd = (struct eth_tx_1st_bd *)FUNC6(&txq->tx_pbl);

	FUNC4(first_bd, 0, sizeof(*first_bd));
	first_bd->data.bd_flags.bitfields =
	    FUNC1(ETH_TX_1ST_BD_FLAGS_START_BD_SHIFT);

	val = (length & ETH_TX_DATA_1ST_BD_PKT_LEN_MASK) <<
	       ETH_TX_DATA_1ST_BD_PKT_LEN_SHIFT;

	first_bd->data.bitfields |= FUNC2(val);
	first_bd->data.nbds = 1;

	/* We can safely ignore the offset, as it's 0 for XDP */
	FUNC0(first_bd, metadata->mapping + padding, length);

	/* Synchronize the buffer back to device, as program [probably]
	 * has changed it.
	 */
	FUNC3(&edev->pdev->dev,
				   metadata->mapping + padding,
				   length, PCI_DMA_TODEVICE);

	txq->sw_tx_ring.xdp[idx].page = metadata->data;
	txq->sw_tx_ring.xdp[idx].mapping = metadata->mapping;
	txq->sw_tx_prod = (txq->sw_tx_prod + 1) % txq->num_tx_buffers;

	/* Mark the fastpath for future XDP doorbell */
	fp->xdp_xmit = 1;

	return 0;
}