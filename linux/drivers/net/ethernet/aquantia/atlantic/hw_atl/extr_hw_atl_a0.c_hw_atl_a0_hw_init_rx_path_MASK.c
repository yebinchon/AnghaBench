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
struct aq_nic_cfg_s {scalar_t__ is_rss; } ;
struct aq_hw_s {struct aq_nic_cfg_s* aq_nic_cfg; } ;

/* Variables and functions */
 int HW_ATL_A0_MAC_MAX ; 
 int FUNC0 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct aq_hw_s*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct aq_hw_s*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct aq_hw_s*,unsigned int,int) ; 

__attribute__((used)) static int FUNC16(struct aq_hw_s *self)
{
	struct aq_nic_cfg_s *cfg = self->aq_nic_cfg;
	int i;

	/* Rx TC/RSS number config */
	FUNC7(self, 1U);

	/* Rx flow control */
	FUNC8(self, 1U);

	/* RSS Ring selection */
	FUNC6(self, cfg->is_rss ?
					  0xB3333333U : 0x00000000U);

	/* Multicast filters */
	for (i = HW_ATL_A0_MAC_MAX; i--;) {
		FUNC12(self, (i == 0U) ? 1U : 0U, i);
		FUNC15(self, 1U, i);
	}

	FUNC4(self, 0x00000000U);
	FUNC5(self, 0x00010FFFU, 0U);

	/* Vlan filters */
	FUNC10(self, 0x88A8U);
	FUNC9(self, 0x8100U);
	FUNC11(self, 1);

	/* Rx Interrupts */
	FUNC3(self, 1U);

	/* misc */
	FUNC14(self, 1U);
	FUNC13(self, 0xFFFFU & (~0U / 256U));

	FUNC1(self, 0U);
	FUNC2(self, 0U);

	return FUNC0(self);
}