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
struct set_loopback {size_t vf_id; int /*<<< orphan*/  enable; } ;
struct nicpf {size_t num_vf_en; int /*<<< orphan*/  node; int /*<<< orphan*/ * vf_lmac_map; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIC_PF_CQ_AVG_CFG ; 
 int /*<<< orphan*/  NIC_PF_RRM_AVG_CFG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nicpf*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct nicpf *nic, struct set_loopback *lbk)
{
	int bgx_idx, lmac_idx;

	if (lbk->vf_id >= nic->num_vf_en)
		return -1;

	bgx_idx = FUNC1(nic->vf_lmac_map[lbk->vf_id]);
	lmac_idx = FUNC2(nic->vf_lmac_map[lbk->vf_id]);

	FUNC3(nic->node, bgx_idx, lmac_idx, lbk->enable);

	/* Enable moving average calculation.
	 * Keep the LVL/AVG delay to HW enforced minimum so that, not too many
	 * packets sneek in between average calculations.
	 */
	FUNC4(nic, NIC_PF_CQ_AVG_CFG,
		      (FUNC0(20) | 0x2ull << 14 | 0x1));
	FUNC4(nic, NIC_PF_RRM_AVG_CFG,
		      (FUNC0(20) | 0x3ull << 14 | 0x1));

	return 0;
}