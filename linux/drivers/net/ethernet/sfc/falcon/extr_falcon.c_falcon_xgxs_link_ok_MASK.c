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
struct ef4_nic {int dummy; } ;
typedef  int /*<<< orphan*/  ef4_oword_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FFE_AB_XX_STAT_ALL_LANES ; 
 int /*<<< orphan*/  FRF_AB_XX_ALIGN_DONE ; 
 int /*<<< orphan*/  FRF_AB_XX_CHAR_ERR ; 
 int /*<<< orphan*/  FRF_AB_XX_COMMA_DET ; 
 int /*<<< orphan*/  FRF_AB_XX_DISPERR ; 
 int /*<<< orphan*/  FRF_AB_XX_SYNC_STAT ; 
 int /*<<< orphan*/  FR_AB_XX_CORE_STAT ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct ef4_nic *efx)
{
	ef4_oword_t reg;
	bool align_done, link_ok = false;
	int sync_status;

	/* Read link status */
	FUNC2(efx, &reg, FR_AB_XX_CORE_STAT);

	align_done = FUNC0(reg, FRF_AB_XX_ALIGN_DONE);
	sync_status = FUNC0(reg, FRF_AB_XX_SYNC_STAT);
	if (align_done && (sync_status == FFE_AB_XX_STAT_ALL_LANES))
		link_ok = true;

	/* Clear link status ready for next read */
	FUNC1(reg, FRF_AB_XX_COMMA_DET, FFE_AB_XX_STAT_ALL_LANES);
	FUNC1(reg, FRF_AB_XX_CHAR_ERR, FFE_AB_XX_STAT_ALL_LANES);
	FUNC1(reg, FRF_AB_XX_DISPERR, FFE_AB_XX_STAT_ALL_LANES);
	FUNC3(efx, &reg, FR_AB_XX_CORE_STAT);

	return link_ok;
}