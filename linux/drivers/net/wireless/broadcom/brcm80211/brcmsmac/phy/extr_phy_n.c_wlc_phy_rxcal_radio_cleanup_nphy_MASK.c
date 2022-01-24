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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int radiorev; int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int /*<<< orphan*/ * tx_rx_cal_radio_saveregs; TYPE_1__ pubpi; int /*<<< orphan*/  radio_chanspec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PHY_CORE_0 ; 
 int RADIO_2056_RX0 ; 
 int RADIO_2056_RX1 ; 
 int RADIO_2056_RX_LNAA_MASTER ; 
 int RADIO_2056_RX_LNAA_TUNE ; 
 int RADIO_2056_RX_LNAG_MASTER ; 
 int RADIO_2056_RX_LNAG_TUNE ; 
 int RADIO_2056_RX_RXIQCAL_RXMUX ; 
 int RADIO_2056_RX_RXSPARE2 ; 
 int RADIO_2056_TX0 ; 
 int RADIO_2056_TX1 ; 
 int RADIO_2056_TX_RXIQCAL_TXMUX ; 
 int RADIO_2056_TX_TXSPARE2 ; 
 int RADIO_2057_TX0_TXRXCOUPLE_2G_ATTEN ; 
 int RADIO_2057_TX0_TXRXCOUPLE_2G_PWRUP ; 
 int RADIO_2057_TX0_TXRXCOUPLE_5G_ATTEN ; 
 int RADIO_2057_TX0_TXRXCOUPLE_5G_PWRUP ; 
 int RADIO_2057_TX1_TXRXCOUPLE_2G_ATTEN ; 
 int RADIO_2057_TX1_TXRXCOUPLE_2G_PWRUP ; 
 int RADIO_2057_TX1_TXRXCOUPLE_5G_ATTEN ; 
 int RADIO_2057_TX1_TXRXCOUPLE_5G_PWRUP ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct brcms_phy *pi, u8 rx_core)
{
	if (FUNC1(pi->pubpi.phy_rev, 7)) {
		if (rx_core == PHY_CORE_0) {
			if (FUNC0(pi->radio_chanspec)) {
				FUNC2(
					pi,
					RADIO_2057_TX0_TXRXCOUPLE_5G_PWRUP,
					pi->
					tx_rx_cal_radio_saveregs[0]);
				FUNC2(
					pi,
					RADIO_2057_TX0_TXRXCOUPLE_5G_ATTEN,
					pi->
					tx_rx_cal_radio_saveregs[1]);

			} else {
				FUNC2(
					pi,
					RADIO_2057_TX0_TXRXCOUPLE_2G_PWRUP,
					pi->
					tx_rx_cal_radio_saveregs[0]);
				FUNC2(
					pi,
					RADIO_2057_TX0_TXRXCOUPLE_2G_ATTEN,
					pi->
					tx_rx_cal_radio_saveregs[1]);
			}

		} else {
			if (FUNC0(pi->radio_chanspec)) {
				FUNC2(
					pi,
					RADIO_2057_TX1_TXRXCOUPLE_5G_PWRUP,
					pi->
					tx_rx_cal_radio_saveregs[0]);
				FUNC2(
					pi,
					RADIO_2057_TX1_TXRXCOUPLE_5G_ATTEN,
					pi->
					tx_rx_cal_radio_saveregs[1]);

			} else {
				FUNC2(
					pi,
					RADIO_2057_TX1_TXRXCOUPLE_2G_PWRUP,
					pi->
					tx_rx_cal_radio_saveregs[0]);
				FUNC2(
					pi,
					RADIO_2057_TX1_TXRXCOUPLE_2G_ATTEN,
					pi->
					tx_rx_cal_radio_saveregs[1]);
			}
		}

	} else {
		if (rx_core == PHY_CORE_0) {
			FUNC2(pi,
					RADIO_2056_TX_RXIQCAL_TXMUX |
					RADIO_2056_TX1,
					pi->tx_rx_cal_radio_saveregs[0]);

			FUNC2(pi,
					RADIO_2056_RX_RXIQCAL_RXMUX |
					RADIO_2056_RX0,
					pi->tx_rx_cal_radio_saveregs[1]);

			if (pi->pubpi.radiorev >= 5) {
				FUNC2(pi,
						RADIO_2056_RX_RXSPARE2 |
						RADIO_2056_RX0,
						pi->
						tx_rx_cal_radio_saveregs[2]);

				FUNC2(pi,
						RADIO_2056_TX_TXSPARE2 |
						RADIO_2056_TX1,
						pi->
						tx_rx_cal_radio_saveregs[3]);
			}

			if (FUNC0(pi->radio_chanspec)) {
				if (pi->pubpi.radiorev >= 5)
					FUNC2(
						pi,
						RADIO_2056_RX_LNAA_MASTER
						| RADIO_2056_RX0,
						pi->
						tx_rx_cal_radio_saveregs
						[4]);
				else
					FUNC2(
						pi,
						RADIO_2056_RX_LNAA_TUNE
						| RADIO_2056_RX0,
						pi->
						tx_rx_cal_radio_saveregs
						[4]);
			} else {
				if (pi->pubpi.radiorev >= 5)
					FUNC2(
						pi,
						RADIO_2056_RX_LNAG_MASTER
						| RADIO_2056_RX0,
						pi->
						tx_rx_cal_radio_saveregs
						[4]);
				else
					FUNC2(
						pi,
						RADIO_2056_RX_LNAG_TUNE
						| RADIO_2056_RX0,
						pi->
						tx_rx_cal_radio_saveregs
						[4]);
			}

		} else {
			FUNC2(pi,
					RADIO_2056_TX_RXIQCAL_TXMUX |
					RADIO_2056_TX0,
					pi->tx_rx_cal_radio_saveregs[0]);

			FUNC2(pi,
					RADIO_2056_RX_RXIQCAL_RXMUX |
					RADIO_2056_RX1,
					pi->tx_rx_cal_radio_saveregs[1]);

			if (pi->pubpi.radiorev >= 5) {
				FUNC2(pi,
						RADIO_2056_RX_RXSPARE2 |
						RADIO_2056_RX1,
						pi->
						tx_rx_cal_radio_saveregs[2]);

				FUNC2(pi,
						RADIO_2056_TX_TXSPARE2 |
						RADIO_2056_TX0,
						pi->
						tx_rx_cal_radio_saveregs[3]);
			}

			if (FUNC0(pi->radio_chanspec)) {
				if (pi->pubpi.radiorev >= 5)
					FUNC2(
						pi,
						RADIO_2056_RX_LNAA_MASTER
						| RADIO_2056_RX1,
						pi->
						tx_rx_cal_radio_saveregs
						[4]);
				else
					FUNC2(
						pi,
						RADIO_2056_RX_LNAA_TUNE
						| RADIO_2056_RX1,
						pi->
						tx_rx_cal_radio_saveregs
						[4]);
			} else {
				if (pi->pubpi.radiorev >= 5)
					FUNC2(
						pi,
						RADIO_2056_RX_LNAG_MASTER
						| RADIO_2056_RX1,
						pi->
						tx_rx_cal_radio_saveregs
						[4]);
				else
					FUNC2(
						pi,
						RADIO_2056_RX_LNAG_TUNE
						| RADIO_2056_RX1,
						pi->
						tx_rx_cal_radio_saveregs
						[4]);
			}
		}
	}
}