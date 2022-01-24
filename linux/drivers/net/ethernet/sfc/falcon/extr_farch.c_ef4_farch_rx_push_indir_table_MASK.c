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
struct ef4_nic {int /*<<< orphan*/ * rx_indir_table; } ;
typedef  int /*<<< orphan*/  ef4_dword_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ EF4_REV_FALCON_B0 ; 
 int /*<<< orphan*/  FRF_BZ_IT_QUEUE ; 
 scalar_t__ FR_BZ_RX_INDIRECTION_TBL ; 
 size_t FR_BZ_RX_INDIRECTION_TBL_ROWS ; 
 size_t FR_BZ_RX_INDIRECTION_TBL_STEP ; 
 scalar_t__ FUNC4 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*,int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC6(struct ef4_nic *efx)
{
	size_t i = 0;
	ef4_dword_t dword;

	FUNC1(FUNC4(efx) < EF4_REV_FALCON_B0);

	FUNC2(FUNC0(efx->rx_indir_table) !=
		     FR_BZ_RX_INDIRECTION_TBL_ROWS);

	for (i = 0; i < FR_BZ_RX_INDIRECTION_TBL_ROWS; i++) {
		FUNC3(dword, FRF_BZ_IT_QUEUE,
				     efx->rx_indir_table[i]);
		FUNC5(efx, &dword,
			   FR_BZ_RX_INDIRECTION_TBL +
			   FR_BZ_RX_INDIRECTION_TBL_STEP * i);
	}
}