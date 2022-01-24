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
typedef  int u64 ;
struct nicpf {scalar_t__ num_vf_en; int /*<<< orphan*/  pdev; int /*<<< orphan*/ * vf_lmac_map; int /*<<< orphan*/  node; TYPE_1__* hw; } ;
struct TYPE_2__ {int bgx_cnt; } ;

/* Variables and functions */
 int MAX_LMAC_PER_BGX ; 
 int NIC_HW_MAX_FRS ; 
 scalar_t__ NIC_PF_LMAC_0_7_CREDIT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nicpf*,scalar_t__,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nicpf *nic)
{
	unsigned bgx_map = FUNC2(nic->node);
	int bgx, next_bgx_lmac = 0;
	int lmac, lmac_cnt = 0;
	u64 lmac_credit;

	nic->num_vf_en = 0;

	for (bgx = 0; bgx < nic->hw->bgx_cnt; bgx++) {
		if (!(bgx_map & (1 << bgx)))
			continue;
		lmac_cnt = FUNC1(nic->node, bgx);
		for (lmac = 0; lmac < lmac_cnt; lmac++)
			nic->vf_lmac_map[next_bgx_lmac++] =
						FUNC0(bgx, lmac);
		nic->num_vf_en += lmac_cnt;

		/* Program LMAC credits */
		lmac_credit = (1ull << 1); /* channel credit enable */
		lmac_credit |= (0x1ff << 2); /* Max outstanding pkt count */
		/* 48KB BGX Tx buffer size, each unit is of size 16bytes */
		lmac_credit |= (((((48 * 1024) / lmac_cnt) -
				NIC_HW_MAX_FRS) / 16) << 12);
		lmac = bgx * MAX_LMAC_PER_BGX;
		for (; lmac < lmac_cnt + (bgx * MAX_LMAC_PER_BGX); lmac++)
			FUNC3(nic,
				      NIC_PF_LMAC_0_7_CREDIT + (lmac * 8),
				      lmac_credit);

		/* On CN81XX there are only 8 VFs but max possible no of
		 * interfaces are 9.
		 */
		if (nic->num_vf_en >= FUNC4(nic->pdev)) {
			nic->num_vf_en = FUNC4(nic->pdev);
			break;
		}
	}
}