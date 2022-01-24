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
typedef  int u32 ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int HW_ATL_UCP_0X370_REG ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*,int) ; 
 int FUNC6 (struct aq_hw_s*,int,int*,int /*<<< orphan*/ ) ; 

int FUNC7(struct aq_hw_s *self,
				   u8 *mac)
{
	int err = 0;
	u32 h = 0U;
	u32 l = 0U;
	u32 mac_addr[2];

	if (!FUNC2(self, HW_ATL_UCP_0X370_REG)) {
		unsigned int rnd = 0;
		unsigned int ucp_0x370 = 0;

		FUNC5(&rnd, sizeof(unsigned int));

		ucp_0x370 = 0x02020202 | (0xFEFEFEFE & rnd);
		FUNC3(self, HW_ATL_UCP_0X370_REG, ucp_0x370);
	}

	err = FUNC6(self,
					    FUNC2(self, 0x00000374U) +
					    (40U * 4U),
					    mac_addr,
					    FUNC0(mac_addr));
	if (err < 0) {
		mac_addr[0] = 0U;
		mac_addr[1] = 0U;
		err = 0;
	} else {
		mac_addr[0] = FUNC1(mac_addr[0]);
		mac_addr[1] = FUNC1(mac_addr[1]);
	}

	FUNC4(mac, (u8 *)mac_addr);

	if ((mac[0] & 0x01U) || ((mac[0] | mac[1] | mac[2]) == 0x00U)) {
		/* chip revision */
		l = 0xE3000000U |
		    (0xFFFFU & FUNC2(self, HW_ATL_UCP_0X370_REG)) |
		    (0x00 << 16);
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