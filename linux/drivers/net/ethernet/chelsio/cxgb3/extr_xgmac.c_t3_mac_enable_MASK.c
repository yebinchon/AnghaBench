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
struct mac_stats {int /*<<< orphan*/  rx_fifo_ovfl; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  rx_frames; int /*<<< orphan*/  tx_frames; } ;
struct cmac {unsigned int offset; int txen; scalar_t__ toggle_cnt; int /*<<< orphan*/  rx_ocnt; void* rx_xcnt; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  rx_mcnt; void* tx_xcnt; int /*<<< orphan*/  tx_tcnt; int /*<<< orphan*/  tx_mcnt; struct mac_stats stats; struct adapter* adapter; } ;
struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ A_TP_PIO_ADDR ; 
 scalar_t__ A_TP_PIO_DATA ; 
 int A_TP_TX_DROP_CFG_CH0 ; 
 int A_TP_TX_DROP_CNT_CH0 ; 
 int A_TP_TX_DROP_MODE ; 
 scalar_t__ A_XGM_RX_CTRL ; 
 scalar_t__ A_XGM_RX_SPI4_SOP_EOP_CNT ; 
 scalar_t__ A_XGM_TX_CTRL ; 
 scalar_t__ A_XGM_TX_SPI4_SOP_EOP_CNT ; 
 int F_RXEN ; 
 int F_TXEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int MAC_DIRECTION_RX ; 
 int MAC_DIRECTION_TX ; 
 scalar_t__ T3_REV_C ; 
 int FUNC2 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,scalar_t__,int) ; 

int FUNC6(struct cmac *mac, int which)
{
	int idx = FUNC2(mac);
	struct adapter *adap = mac->adapter;
	unsigned int oft = mac->offset;
	struct mac_stats *s = &mac->stats;

	if (which & MAC_DIRECTION_TX) {
		FUNC5(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CFG_CH0 + idx);
		FUNC5(adap, A_TP_PIO_DATA,
			     adap->params.rev == T3_REV_C ?
			     0xc4ffff01 : 0xc0ede401);
		FUNC5(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_MODE);
		FUNC4(adap, A_TP_PIO_DATA, 1 << idx,
				 adap->params.rev == T3_REV_C ? 0 : 1 << idx);

		FUNC5(adap, A_XGM_TX_CTRL + oft, F_TXEN);

		FUNC5(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CNT_CH0 + idx);
		mac->tx_mcnt = s->tx_frames;
		mac->tx_tcnt = (FUNC0(FUNC3(adap,
							A_TP_PIO_DATA)));
		mac->tx_xcnt = (FUNC1(FUNC3(adap,
						A_XGM_TX_SPI4_SOP_EOP_CNT +
						oft)));
		mac->rx_mcnt = s->rx_frames;
		mac->rx_pause = s->rx_pause;
		mac->rx_xcnt = (FUNC1(FUNC3(adap,
						A_XGM_RX_SPI4_SOP_EOP_CNT +
						oft)));
		mac->rx_ocnt = s->rx_fifo_ovfl;
		mac->txen = F_TXEN;
		mac->toggle_cnt = 0;
	}
	if (which & MAC_DIRECTION_RX)
		FUNC5(adap, A_XGM_RX_CTRL + oft, F_RXEN);
	return 0;
}