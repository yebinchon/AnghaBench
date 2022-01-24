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
typedef  unsigned int u32 ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_ATL_FW_SM_RAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REVISION_B1 ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw_atl_scrpad12_get ; 
 int /*<<< orphan*/  hw_atl_sem_ram_get ; 
 int /*<<< orphan*/  hw_atl_utils_mif_cmd_get ; 
 int FUNC4 (int /*<<< orphan*/ ,struct aq_hw_s*,unsigned int,int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct aq_hw_s *self, u32 a, u32 *p,
					 u32 cnt)
{
	u32 val;
	int err = 0;

	err = FUNC4(hw_atl_sem_ram_get, self,
					val, val == 1U,
					10U, 100000U);
	if (err < 0)
		goto err_exit;

	if (FUNC0(REVISION_B1)) {
		u32 offset = 0;

		for (; offset < cnt; ++offset) {
			FUNC1(self, 0x328, p[offset]);
			FUNC1(self, 0x32C,
					(0x80000000 | (0xFFFF & (offset * 4))));
			FUNC2(self, 1);
			/* 1000 times by 10us = 10ms */
			err = FUNC4(hw_atl_scrpad12_get,
							self, val,
							(val & 0xF0000000) !=
							0x80000000,
							10U, 10000U);
		}
	} else {
		u32 offset = 0;

		FUNC1(self, 0x208, a);

		for (; offset < cnt; ++offset) {
			FUNC1(self, 0x20C, p[offset]);
			FUNC1(self, 0x200, 0xC000);

			err = FUNC4(hw_atl_utils_mif_cmd_get,
							self, val,
							(val & 0x100) == 0,
							1000U, 10000U);
		}
	}

	FUNC3(self, 1U, HW_ATL_FW_SM_RAM);

err_exit:
	return err;
}