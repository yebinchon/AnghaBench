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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  HW_ATL_FW2X_MPI_EFUSE_ADDR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct aq_hw_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*,int) ; 
 int FUNC5 (struct aq_hw_s*,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct aq_hw_s *self, u8 *mac)
{
	int err = 0;
	u32 h = 0U;
	u32 l = 0U;
	u32 mac_addr[2] = { 0 };
	u32 efuse_addr = FUNC2(self, HW_ATL_FW2X_MPI_EFUSE_ADDR);

	if (efuse_addr != 0) {
		err = FUNC5(self,
						    efuse_addr + (40U * 4U),
						    mac_addr,
						    FUNC0(mac_addr));
		if (err)
			return err;
		mac_addr[0] = FUNC1(mac_addr[0]);
		mac_addr[1] = FUNC1(mac_addr[1]);
	}

	FUNC3(mac, (u8 *)mac_addr);

	if ((mac[0] & 0x01U) || ((mac[0] | mac[1] | mac[2]) == 0x00U)) {
		unsigned int rnd = 0;

		FUNC4(&rnd, sizeof(unsigned int));

		l = 0xE3000000U | (0xFFFFU & rnd) | (0x00 << 16);
		h = 0x8001300EU;

		mac[5] = (u8)(0xFFU & l);
		l >>= 8;
		mac[4] = (u8)(0xFFU & l);
		l >>= 8;
		mac[3] = (u8)(0xFFU & l);
		l >>= 8;
		mac[2] = (u8)(0xFFU & l);
		mac[1] = (u8)(0xFFU & h);
		h >>= 8;
		mac[0] = (u8)(0xFFU & h);
	}
	return err;
}