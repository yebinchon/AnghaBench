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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int type; int max_queues; } ;
struct fm10k_hw {int revision_id; int device_id; TYPE_1__ mac; } ;
struct fm10k_intfc {struct fm10k_hw hw; } ;
struct ethtool_regs {int version; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FM10K_CTRL ; 
 int /*<<< orphan*/  FM10K_CTRL_EXT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FM10K_DMA_CTRL ; 
 int /*<<< orphan*/  FM10K_DMA_CTRL2 ; 
 int /*<<< orphan*/  FM10K_GCR ; 
 int /*<<< orphan*/  FM10K_GCR_EXT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FM10K_MAX_QUEUES_PF ; 
 int FM10K_MAX_QUEUES_POOL ; 
 int FM10K_REGS_LEN_Q ; 
 int /*<<< orphan*/  FM10K_REGS_LEN_VSI ; 
 int /*<<< orphan*/  FM10K_TPH_CTRL ; 
 int /*<<< orphan*/  FM10K_VFCTRL ; 
 int /*<<< orphan*/  FM10K_VFINT_MAP ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FM10K_VFSYSTIME ; 
 int /*<<< orphan*/  FUNC6 (struct fm10k_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fm10k_hw*,int /*<<< orphan*/ *,int) ; 
#define  fm10k_mac_pf 129 
#define  fm10k_mac_vf 128 
 void* FUNC8 (struct fm10k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct fm10k_intfc* FUNC10 (struct net_device*) ; 

__attribute__((used)) static void FUNC11(struct net_device *netdev,
			   struct ethtool_regs *regs, void *p)
{
	struct fm10k_intfc *interface = FUNC10(netdev);
	struct fm10k_hw *hw = &interface->hw;
	u32 *buff = p;
	u16 i;

	regs->version = FUNC0(24) | (hw->revision_id << 16) | hw->device_id;

	switch (hw->mac.type) {
	case fm10k_mac_pf:
		/* General PF Registers */
		*(buff++) = FUNC8(hw, FM10K_CTRL);
		*(buff++) = FUNC8(hw, FM10K_CTRL_EXT);
		*(buff++) = FUNC8(hw, FM10K_GCR);
		*(buff++) = FUNC8(hw, FM10K_GCR_EXT);

		for (i = 0; i < 8; i++) {
			*(buff++) = FUNC8(hw, FUNC2(i));
			*(buff++) = FUNC8(hw, FUNC1(i));
		}

		for (i = 0; i < 65; i++) {
			FUNC7(hw, buff, i);
			buff += FM10K_REGS_LEN_VSI;
		}

		*(buff++) = FUNC8(hw, FM10K_DMA_CTRL);
		*(buff++) = FUNC8(hw, FM10K_DMA_CTRL2);

		for (i = 0; i < FM10K_MAX_QUEUES_PF; i++) {
			FUNC6(hw, buff, i);
			buff += FM10K_REGS_LEN_Q;
		}

		*(buff++) = FUNC8(hw, FM10K_TPH_CTRL);

		for (i = 0; i < 8; i++)
			*(buff++) = FUNC8(hw, FUNC3(i));

		/* Interrupt Throttling Registers */
		for (i = 0; i < 130; i++)
			*(buff++) = FUNC8(hw, FUNC4(i));

		break;
	case fm10k_mac_vf:
		/* General VF registers */
		*(buff++) = FUNC8(hw, FM10K_VFCTRL);
		*(buff++) = FUNC8(hw, FM10K_VFINT_MAP);
		*(buff++) = FUNC8(hw, FM10K_VFSYSTIME);

		/* Interrupt Throttling Registers */
		for (i = 0; i < 8; i++)
			*(buff++) = FUNC8(hw, FUNC5(i));

		FUNC7(hw, buff, 0);
		buff += FM10K_REGS_LEN_VSI;

		for (i = 0; i < FM10K_MAX_QUEUES_POOL; i++) {
			if (i < hw->mac.max_queues)
				FUNC6(hw, buff, i);
			else
				FUNC9(buff, 0, sizeof(u32) * FM10K_REGS_LEN_Q);
			buff += FM10K_REGS_LEN_Q;
		}

		break;
	default:
		return;
	}
}