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
struct aq_hw_s {unsigned int mbox_addr; } ;
struct aq_hw_caps_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_ATL_UCP_0X370_REG ; 
 int /*<<< orphan*/  FUNC0 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,int,unsigned int) ; 
 int /*<<< orphan*/  hw_atl_scrpad25_get ; 
 int FUNC4 (int /*<<< orphan*/ ,struct aq_hw_s*,unsigned int,int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct aq_hw_s *self,
				 const struct aq_hw_caps_s *aq_hw_caps)
{
	int err = 0;

	if (!FUNC0(self, 0x370U)) {
		unsigned int rnd = 0U;
		unsigned int ucp_0x370 = 0U;

		FUNC2(&rnd, sizeof(unsigned int));

		ucp_0x370 = 0x02020202U | (0xFEFEFEFEU & rnd);
		FUNC1(self, HW_ATL_UCP_0X370_REG, ucp_0x370);
	}

	FUNC3(self, 0x00000000U, 25U);

	/* check 10 times by 1ms */
	err = FUNC4(hw_atl_scrpad25_get,
					self, self->mbox_addr,
					self->mbox_addr != 0U,
					1000U, 10000U);

	return err;
}