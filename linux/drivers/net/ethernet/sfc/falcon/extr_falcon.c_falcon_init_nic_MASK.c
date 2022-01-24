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
struct ef4_nic {int /*<<< orphan*/  rx_indir_table; } ;
typedef  int /*<<< orphan*/  ef4_oword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ EF4_REV_FALCON_B0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct ef4_nic*) ; 
 scalar_t__ FUNC3 (struct ef4_nic*) ; 
 scalar_t__ FUNC4 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FRF_AA_RX_ISCSI_DIS ; 
 int /*<<< orphan*/  FRF_AA_RX_NODESC_WAIT_DIS ; 
 int /*<<< orphan*/  FRF_AA_RX_SELF_RST_EN ; 
 int /*<<< orphan*/  FRF_AB_MEM_PERR_EN_TX_DATA ; 
 int /*<<< orphan*/  FRF_AB_ONCHIP_SRAM ; 
 int /*<<< orphan*/  FRF_AZ_TX_NO_EOP_DISC_EN ; 
 int /*<<< orphan*/  FRF_BZ_FLS_EVQ_ID ; 
 int /*<<< orphan*/  FRF_BZ_TCP_FULL_SRCH_LIMIT ; 
 int /*<<< orphan*/  FRF_BZ_TCP_WILD_SRCH_LIMIT ; 
 int /*<<< orphan*/  FRF_BZ_UDP_FULL_SRCH_LIMIT ; 
 int /*<<< orphan*/  FRF_BZ_UDP_WILD_SRCH_LIMIT ; 
 int /*<<< orphan*/  FR_AA_RX_SELF_RST ; 
 int /*<<< orphan*/  FR_AB_NIC_STAT ; 
 int /*<<< orphan*/  FR_AZ_CSR_SPARE ; 
 int /*<<< orphan*/  FR_AZ_TX_CFG ; 
 int /*<<< orphan*/  FR_BZ_DP_CTRL ; 
 int /*<<< orphan*/  FR_BZ_RX_FILTER_CTL ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*) ; 
 scalar_t__ FUNC6 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC7 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ef4_nic*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ef4_nic*) ; 
 int FUNC11 (struct ef4_nic*) ; 

__attribute__((used)) static int FUNC12(struct ef4_nic *efx)
{
	ef4_oword_t temp;
	int rc;

	/* Use on-chip SRAM */
	FUNC7(efx, &temp, FR_AB_NIC_STAT);
	FUNC1(temp, FRF_AB_ONCHIP_SRAM, 1);
	FUNC8(efx, &temp, FR_AB_NIC_STAT);

	rc = FUNC11(efx);
	if (rc)
		return rc;

	/* Clear the parity enables on the TX data fifos as
	 * they produce false parity errors because of timing issues
	 */
	if (FUNC2(efx)) {
		FUNC7(efx, &temp, FR_AZ_CSR_SPARE);
		FUNC1(temp, FRF_AB_MEM_PERR_EN_TX_DATA, 0);
		FUNC8(efx, &temp, FR_AZ_CSR_SPARE);
	}

	if (FUNC4(efx)) {
		FUNC7(efx, &temp, FR_BZ_RX_FILTER_CTL);
		FUNC1(temp, FRF_BZ_UDP_FULL_SRCH_LIMIT, 8);
		FUNC1(temp, FRF_BZ_UDP_WILD_SRCH_LIMIT, 8);
		FUNC1(temp, FRF_BZ_TCP_FULL_SRCH_LIMIT, 8);
		FUNC1(temp, FRF_BZ_TCP_WILD_SRCH_LIMIT, 8);
		FUNC8(efx, &temp, FR_BZ_RX_FILTER_CTL);
	}

	/* XXX This is documented only for Falcon A0/A1 */
	/* Setup RX.  Wait for descriptor is broken and must
	 * be disabled.  RXDP recovery shouldn't be needed, but is.
	 */
	FUNC7(efx, &temp, FR_AA_RX_SELF_RST);
	FUNC1(temp, FRF_AA_RX_NODESC_WAIT_DIS, 1);
	FUNC1(temp, FRF_AA_RX_SELF_RST_EN, 1);
	if (FUNC3(efx))
		FUNC1(temp, FRF_AA_RX_ISCSI_DIS, 1);
	FUNC8(efx, &temp, FR_AA_RX_SELF_RST);

	/* Do not enable TX_NO_EOP_DISC_EN, since it limits packets to 16
	 * descriptors (which is bad).
	 */
	FUNC7(efx, &temp, FR_AZ_TX_CFG);
	FUNC1(temp, FRF_AZ_TX_NO_EOP_DISC_EN, 0);
	FUNC8(efx, &temp, FR_AZ_TX_CFG);

	FUNC10(efx);

	if (FUNC6(efx) >= EF4_REV_FALCON_B0) {
		FUNC9(efx, false, efx->rx_indir_table);

		/* Set destination of both TX and RX Flush events */
		FUNC0(temp, FRF_BZ_FLS_EVQ_ID, 0);
		FUNC8(efx, &temp, FR_BZ_DP_CTRL);
	}

	FUNC5(efx);

	return 0;
}