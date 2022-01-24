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
struct TYPE_2__ {scalar_t__ context_id; int /*<<< orphan*/  rx_indir_table; } ;
struct efx_nic {TYPE_1__ rss_context; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int EFX_RX_USR_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FRF_AZ_TX_NO_EOP_DISC_EN ; 
 int /*<<< orphan*/  FRF_BZ_FLS_EVQ_ID ; 
 int /*<<< orphan*/  FRF_BZ_RX_DESC_PUSH_EN ; 
 int /*<<< orphan*/  FRF_BZ_RX_HASH_ALG ; 
 int /*<<< orphan*/  FRF_BZ_RX_HASH_INSRT_HDR ; 
 int /*<<< orphan*/  FRF_BZ_RX_INGR_EN ; 
 int /*<<< orphan*/  FRF_BZ_RX_IP_HASH ; 
 int /*<<< orphan*/  FRF_BZ_RX_USR_BUF_SIZE ; 
 int /*<<< orphan*/  FRF_BZ_TX_FLUSH_MIN_LEN_EN ; 
 int /*<<< orphan*/  FRF_CZ_TX_FILTER_EN_BIT ; 
 int /*<<< orphan*/  FRF_CZ_USREV_DIS ; 
 int /*<<< orphan*/  FR_AZ_RX_CFG ; 
 int /*<<< orphan*/  FR_AZ_TX_CFG ; 
 int /*<<< orphan*/  FR_AZ_TX_RESERVED ; 
 int /*<<< orphan*/  FR_BZ_DP_CTRL ; 
 int /*<<< orphan*/  FR_CZ_USR_EV_CFG ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int FUNC3 (struct efx_nic*) ; 
 int FUNC4 (struct efx_nic*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct efx_nic *efx)
{
	efx_oword_t temp;
	int rc;

	/* Recover from a failed assertion post-reset */
	rc = FUNC3(efx);
	if (rc)
		return rc;

	/* Squash TX of packets of 16 bytes or less */
	FUNC5(efx, &temp, FR_AZ_TX_RESERVED);
	FUNC1(temp, FRF_BZ_TX_FLUSH_MIN_LEN_EN, 1);
	FUNC6(efx, &temp, FR_AZ_TX_RESERVED);

	/* Do not enable TX_NO_EOP_DISC_EN, since it limits packets to 16
	 * descriptors (which is bad).
	 */
	FUNC5(efx, &temp, FR_AZ_TX_CFG);
	FUNC1(temp, FRF_AZ_TX_NO_EOP_DISC_EN, 0);
	FUNC1(temp, FRF_CZ_TX_FILTER_EN_BIT, 1);
	FUNC6(efx, &temp, FR_AZ_TX_CFG);

	FUNC5(efx, &temp, FR_AZ_RX_CFG);
	FUNC1(temp, FRF_BZ_RX_DESC_PUSH_EN, 0);
	FUNC1(temp, FRF_BZ_RX_INGR_EN, 1);
	/* Enable hash insertion. This is broken for the 'Falcon' hash
	 * if IPv6 hashing is also enabled, so also select Toeplitz
	 * TCP/IPv4 and IPv4 hashes. */
	FUNC1(temp, FRF_BZ_RX_HASH_INSRT_HDR, 1);
	FUNC1(temp, FRF_BZ_RX_HASH_ALG, 1);
	FUNC1(temp, FRF_BZ_RX_IP_HASH, 1);
	FUNC1(temp, FRF_BZ_RX_USR_BUF_SIZE,
			    EFX_RX_USR_BUF_SIZE >> 5);
	FUNC6(efx, &temp, FR_AZ_RX_CFG);

	FUNC7(efx, false, efx->rss_context.rx_indir_table, NULL);
	efx->rss_context.context_id = 0; /* indicates RSS is active */

	/* Enable event logging */
	rc = FUNC4(efx, true, false, 0);
	if (rc)
		return rc;

	/* Set destination of both TX and RX Flush events */
	FUNC0(temp, FRF_BZ_FLS_EVQ_ID, 0);
	FUNC6(efx, &temp, FR_BZ_DP_CTRL);

	FUNC0(temp, FRF_CZ_USREV_DIS, 1);
	FUNC6(efx, &temp, FR_CZ_USR_EV_CFG);

	FUNC2(efx);
	return 0;
}