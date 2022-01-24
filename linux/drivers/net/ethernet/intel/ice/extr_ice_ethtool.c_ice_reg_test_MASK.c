#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct ice_diag_reg_test_info   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ice_netdev_priv {TYPE_2__* vsi; } ;
struct TYPE_8__ {int num_msix_vectors; } ;
struct TYPE_9__ {TYPE_3__ common_cap; } ;
struct ice_hw {TYPE_4__ func_caps; } ;
struct ice_diag_reg_test_info {int address; int mask; int elem_num; int elem_size; } ;
struct TYPE_7__ {TYPE_1__* port_info; } ;
struct TYPE_6__ {struct ice_hw* hw; } ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
 scalar_t__ GLINT_CTL ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (struct ice_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct ice_netdev_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static u64 FUNC5(struct net_device *netdev)
{
	struct ice_netdev_priv *np = FUNC4(netdev);
	struct ice_hw *hw = np->vsi->port_info->hw;
	u32 int_elements = hw->func_caps.common_cap.num_msix_vectors ?
		hw->func_caps.common_cap.num_msix_vectors - 1 : 1;
	struct ice_diag_reg_test_info {
		u32 address;
		u32 mask;
		u32 elem_num;
		u32 elem_size;
	} ice_reg_list[] = {
		{FUNC1(0, 0), 0x00000fff, int_elements,
			FUNC1(0, 1) - FUNC1(0, 0)},
		{FUNC1(1, 0), 0x00000fff, int_elements,
			FUNC1(1, 1) - FUNC1(1, 0)},
		{FUNC1(0, 0), 0x00000fff, int_elements,
			FUNC1(2, 1) - FUNC1(2, 0)},
		{GLINT_CTL, 0xffff0001, 1, 0}
	};
	int i;

	FUNC3(netdev, "Register test\n");
	for (i = 0; i < FUNC0(ice_reg_list); ++i) {
		u32 j;

		for (j = 0; j < ice_reg_list[i].elem_num; ++j) {
			u32 mask = ice_reg_list[i].mask;
			u32 reg = ice_reg_list[i].address +
				(j * ice_reg_list[i].elem_size);

			/* bail on failure (non-zero return) */
			if (FUNC2(hw, reg, mask))
				return 1;
		}
	}

	return 0;
}