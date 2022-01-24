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
struct eth_tx_next_bd {void* addr_lo; void* addr_hi; } ;
struct TYPE_6__ {int /*<<< orphan*/  header; } ;
struct TYPE_7__ {scalar_t__ prod; scalar_t__ zero_fill1; TYPE_2__ header; } ;
struct TYPE_8__ {TYPE_3__ data; } ;
struct bnx2x_fp_txdata {scalar_t__ tx_pkt; scalar_t__ tx_bd_cons; scalar_t__ tx_bd_prod; scalar_t__ tx_pkt_cons; scalar_t__ tx_pkt_prod; TYPE_4__ tx_db; int /*<<< orphan*/ * tx_cons_sb; scalar_t__ tx_desc_mapping; TYPE_1__* tx_desc_ring; } ;
struct TYPE_5__ {struct eth_tx_next_bd next_bd; } ;

/* Variables and functions */
 int BCM_PAGE_SIZE ; 
 int /*<<< orphan*/  DOORBELL_HDR_DB_TYPE ; 
 int NUM_TX_RINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int TX_DESC_CNT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bnx2x_fp_txdata *txdata)
{
	int i;

	for (i = 1; i <= NUM_TX_RINGS; i++) {
		struct eth_tx_next_bd *tx_next_bd =
			&txdata->tx_desc_ring[TX_DESC_CNT * i - 1].next_bd;

		tx_next_bd->addr_hi =
			FUNC4(FUNC1(txdata->tx_desc_mapping +
				    BCM_PAGE_SIZE*(i % NUM_TX_RINGS)));
		tx_next_bd->addr_lo =
			FUNC4(FUNC2(txdata->tx_desc_mapping +
				    BCM_PAGE_SIZE*(i % NUM_TX_RINGS)));
	}

	*txdata->tx_cons_sb = FUNC3(0);

	FUNC0(txdata->tx_db.data.header.header, DOORBELL_HDR_DB_TYPE, 1);
	txdata->tx_db.data.zero_fill1 = 0;
	txdata->tx_db.data.prod = 0;

	txdata->tx_pkt_prod = 0;
	txdata->tx_pkt_cons = 0;
	txdata->tx_bd_prod = 0;
	txdata->tx_bd_cons = 0;
	txdata->tx_pkt = 0;
}