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
typedef  int uint ;
typedef  int const u8 ;
typedef  int u32 ;
typedef  int const u16 ;
struct phytbl_info {int tbl_id; int tbl_offset; int tbl_width; int tbl_len; scalar_t__ tbl_ptr; } ;
struct brcms_phy {TYPE_1__* sh; } ;
struct TYPE_2__ {scalar_t__ chip; int chiprev; } ;

/* Variables and functions */
 scalar_t__ BCMA_CHIP_ID_BCM43224 ; 
 int NPHY_TBL_ID_ANTSWCTRLLUT ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int const,int const) ; 

void
FUNC2(struct brcms_phy *pi, const struct phytbl_info *ptbl_info,
		    u16 tblAddr, u16 tblDataHi, u16 tblDataLo)
{
	uint idx;
	uint tbl_id = ptbl_info->tbl_id;
	uint tbl_offset = ptbl_info->tbl_offset;
	uint tbl_width = ptbl_info->tbl_width;
	const u8 *ptbl_8b = (const u8 *)ptbl_info->tbl_ptr;
	const u16 *ptbl_16b = (const u16 *)ptbl_info->tbl_ptr;
	const u32 *ptbl_32b = (const u32 *)ptbl_info->tbl_ptr;

	FUNC1(pi, tblAddr, (tbl_id << 10) | tbl_offset);

	for (idx = 0; idx < ptbl_info->tbl_len; idx++) {

		if ((pi->sh->chip == BCMA_CHIP_ID_BCM43224) &&
		    (pi->sh->chiprev == 1) &&
		    (tbl_id == NPHY_TBL_ID_ANTSWCTRLLUT)) {
			FUNC0(pi, tblDataLo);

			FUNC1(pi, tblAddr,
				      (tbl_id << 10) | (tbl_offset + idx));
		}

		if (tbl_width == 32) {
			FUNC1(pi, tblDataHi,
				      (u16) (ptbl_32b[idx] >> 16));
			FUNC1(pi, tblDataLo, (u16) ptbl_32b[idx]);
		} else if (tbl_width == 16) {
			FUNC1(pi, tblDataLo, ptbl_16b[idx]);
		} else {
			FUNC1(pi, tblDataLo, ptbl_8b[idx]);
		}
	}
}