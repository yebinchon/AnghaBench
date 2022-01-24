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
typedef  int /*<<< orphan*/  u32 ;
struct enetc_hw {int dummy; } ;
struct enetc_si {struct enetc_hw hw; } ;
struct enetc_pf {int total_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_PRFSCAPR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENETC_PRFSMR ; 
 int ENETC_PRFSMR_RFSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct enetc_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct enetc_hw*,int /*<<< orphan*/ ,int) ; 
 struct enetc_pf* FUNC4 (struct enetc_si*) ; 

__attribute__((used)) static void FUNC5(struct enetc_si *si)
{
	struct enetc_pf *pf = FUNC4(si);
	struct enetc_hw *hw = &si->hw;
	int num_entries, vf_entries, i;
	u32 val;

	/* split RFS entries between functions */
	val = FUNC2(hw, ENETC_PRFSCAPR);
	num_entries = FUNC0(val);
	vf_entries = num_entries / (pf->total_vfs + 1);

	for (i = 0; i < pf->total_vfs; i++)
		FUNC3(hw, FUNC1(i + 1), vf_entries);
	FUNC3(hw, FUNC1(0),
		      num_entries - vf_entries * pf->total_vfs);

	/* enable RFS on port */
	FUNC3(hw, ENETC_PRFSMR, ENETC_PRFSMR_RFSE);
}