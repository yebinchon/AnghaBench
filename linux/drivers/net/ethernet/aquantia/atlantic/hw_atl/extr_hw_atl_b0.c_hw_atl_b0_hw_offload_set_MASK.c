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
struct aq_nic_cfg_s {int features; scalar_t__ is_lro; } ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 unsigned int HW_ATL_B0_LRO_RXD_MAX ; 
 unsigned int HW_ATL_B0_RINGS_MAX ; 
 int NETIF_F_RXCSUM ; 
 int FUNC0 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct aq_hw_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct aq_hw_s*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct aq_hw_s*,int) ; 

__attribute__((used)) static int FUNC19(struct aq_hw_s *self,
				    struct aq_nic_cfg_s *aq_nic_cfg)
{
	unsigned int i;

	/* TX checksums offloads*/
	FUNC17(self, 1);
	FUNC18(self, 1);

	/* RX checksums offloads*/
	FUNC3(self, !!(aq_nic_cfg->features &
						 NETIF_F_RXCSUM));
	FUNC15(self, !!(aq_nic_cfg->features &
					      NETIF_F_RXCSUM));

	/* LSO offloads*/
	FUNC16(self, 0xFFFFFFFFU);

	/* Outer VLAN tag offload */
	FUNC14(self, 1U);

/* LRO offloads */
	{
		unsigned int val = (8U < HW_ATL_B0_LRO_RXD_MAX) ? 0x3U :
			((4U < HW_ATL_B0_LRO_RXD_MAX) ? 0x2U :
			((2U < HW_ATL_B0_LRO_RXD_MAX) ? 0x1U : 0x0));

		for (i = 0; i < HW_ATL_B0_RINGS_MAX; i++)
			FUNC7(self, val, i);

		FUNC12(self, 0x61AU);
		FUNC5(self, 0);
		/* the LRO timebase divider is 5 uS (0x61a),
		 * which is multiplied by 50(0x32)
		 * to get a maximum coalescing interval of 250 uS,
		 * which is the default value
		 */
		FUNC6(self, 50);

		FUNC11(self, 1U);

		FUNC13(self, 2U);

		FUNC9(self, 1U);

		FUNC8(self, 10U);

		FUNC10(self, 1U);

		FUNC4(self,
				      aq_nic_cfg->is_lro ? 0xFFFFFFFFU : 0U);
		FUNC2(self,
				      aq_nic_cfg->is_lro ? 0xFFFFFFFFU : 0U);

		FUNC1(self, 1U);
	}
	return FUNC0(self);
}