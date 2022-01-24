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
typedef  int u8 ;
typedef  int u16 ;
struct brcms_phy {int tx_power_min; int hwpwr_txcur; int* tx_power_offset; TYPE_1__* sh; scalar_t__ hwpwrctrl; } ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCM_BAND_ALL ; 
 scalar_t__ FUNC0 (struct brcms_phy*) ; 
 int /*<<< orphan*/  MHF2 ; 
 int /*<<< orphan*/  MHF2_HWPWRCTL ; 
 int M_OFDM_OFFSET ; 
 int M_TXPWR_CUR ; 
 int M_TXPWR_MAX ; 
 int M_TXPWR_N ; 
 int M_TXPWR_TARGET ; 
 int NUM_TSSI_FRAMES ; 
 int TXP_FIRST_OFDM ; 
 int TXP_LAST_OFDM ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

void FUNC5(struct brcms_phy *pi)
{
	int j;
	if (FUNC0(pi))
		return;

	if (!pi->sh->clk)
		return;

	if (pi->hwpwrctrl) {
		u16 offset;

		FUNC4(pi->sh->physhim, M_TXPWR_MAX, 63);
		FUNC4(pi->sh->physhim, M_TXPWR_N,
				     1 << NUM_TSSI_FRAMES);

		FUNC4(pi->sh->physhim, M_TXPWR_TARGET,
				     pi->tx_power_min << NUM_TSSI_FRAMES);

		FUNC4(pi->sh->physhim, M_TXPWR_CUR,
				     pi->hwpwr_txcur);

		for (j = TXP_FIRST_OFDM; j <= TXP_LAST_OFDM; j++) {
			static const u8 ucode_ofdm_rates[] = {
				0x0c, 0x12, 0x18, 0x24, 0x30, 0x48, 0x60, 0x6c
			};
			offset = FUNC3(
				pi->sh->physhim,
				ucode_ofdm_rates[j - TXP_FIRST_OFDM]);
			FUNC4(pi->sh->physhim, offset + 6,
					     pi->tx_power_offset[j]);
			FUNC4(pi->sh->physhim, offset + 14,
					     -(pi->tx_power_offset[j] / 2));
		}

		FUNC2(pi->sh->physhim, MHF2, MHF2_HWPWRCTL,
			       MHF2_HWPWRCTL, BRCM_BAND_ALL);
	} else {
		int i;

		for (i = TXP_FIRST_OFDM; i <= TXP_LAST_OFDM; i++)
			pi->tx_power_offset[i] =
				(u8) FUNC1(pi->tx_power_offset[i], 8);
		FUNC4(pi->sh->physhim, M_OFDM_OFFSET,
				     (u16)
				     ((pi->tx_power_offset[TXP_FIRST_OFDM]
				       + 7) >> 3));
	}
}