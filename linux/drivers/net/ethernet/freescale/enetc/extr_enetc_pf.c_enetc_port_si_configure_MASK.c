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
typedef  int u32 ;
struct enetc_hw {int dummy; } ;
struct enetc_si {TYPE_1__* pdev; struct enetc_hw hw; } ;
struct enetc_pf {int total_vfs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_PCAPR0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENETC_PF_NUM_RINGS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int ENETC_PSICFGR0_SIVIE ; 
 int ENETC_PSICFGR0_VTE ; 
 int /*<<< orphan*/  ENETC_PSIVLANFMR ; 
 int ENETC_PSIVLANFMR_VS ; 
 int /*<<< orphan*/  ENETC_PVCLCTR ; 
 int FUNC6 (int) ; 
 int ENETC_VLAN_TYPE_C ; 
 int ENETC_VLAN_TYPE_S ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC8 (struct enetc_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct enetc_hw*,int /*<<< orphan*/ ,int) ; 
 struct enetc_pf* FUNC10 (struct enetc_si*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct enetc_si *si)
{
	struct enetc_pf *pf = FUNC10(si);
	struct enetc_hw *hw = &si->hw;
	int num_rings, i;
	u32 val;

	val = FUNC8(hw, ENETC_PCAPR0);
	num_rings = FUNC11(FUNC0(val), FUNC1(val));

	val = FUNC4(ENETC_PF_NUM_RINGS);
	val |= FUNC3(ENETC_PF_NUM_RINGS);

	if (FUNC12(num_rings < ENETC_PF_NUM_RINGS)) {
		val = FUNC4(num_rings);
		val |= FUNC3(num_rings);

		FUNC7(&si->pdev->dev, "Found %d rings, expected %d!\n",
			 num_rings, ENETC_PF_NUM_RINGS);

		num_rings = 0;
	}

	/* Add default one-time settings for SI0 (PF) */
	val |= FUNC5(ENETC_VLAN_TYPE_C | ENETC_VLAN_TYPE_S);

	FUNC9(hw, FUNC2(0), val);

	if (num_rings)
		num_rings -= ENETC_PF_NUM_RINGS;

	/* Configure the SIs for each available VF */
	val = FUNC5(ENETC_VLAN_TYPE_C | ENETC_VLAN_TYPE_S);
	val |= ENETC_PSICFGR0_VTE | ENETC_PSICFGR0_SIVIE;

	if (num_rings) {
		num_rings /= pf->total_vfs;
		val |= FUNC4(num_rings);
		val |= FUNC3(num_rings);
	}

	for (i = 0; i < pf->total_vfs; i++)
		FUNC9(hw, FUNC2(i + 1), val);

	/* Port level VLAN settings */
	val = FUNC6(ENETC_VLAN_TYPE_C | ENETC_VLAN_TYPE_S);
	FUNC9(hw, ENETC_PVCLCTR, val);
	/* use outer tag for VLAN filtering */
	FUNC9(hw, ENETC_PSIVLANFMR, ENETC_PSIVLANFMR_VS);
}