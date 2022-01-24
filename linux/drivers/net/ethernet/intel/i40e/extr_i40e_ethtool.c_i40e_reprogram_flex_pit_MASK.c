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
struct i40e_pf {int /*<<< orphan*/  hw; int /*<<< orphan*/  l4_flex_pit_list; int /*<<< orphan*/  l3_flex_pit_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_FLEX_PIT_IDX_START_L3 ; 
 int /*<<< orphan*/  I40E_FLEX_PIT_IDX_START_L4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I40E_L3_GLQF_ORT_IDX ; 
 int /*<<< orphan*/  I40E_L4_GLQF_ORT_IDX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_pf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct i40e_pf *pf)
{
	FUNC2(pf, &pf->l3_flex_pit_list,
				  I40E_FLEX_PIT_IDX_START_L3);

	FUNC2(pf, &pf->l4_flex_pit_list,
				  I40E_FLEX_PIT_IDX_START_L4);

	/* We also need to program the L3 and L4 GLQF ORT register */
	FUNC3(&pf->hw,
			  FUNC0(I40E_L3_GLQF_ORT_IDX),
			  FUNC1(I40E_FLEX_PIT_IDX_START_L3,
					    3, 1));

	FUNC3(&pf->hw,
			  FUNC0(I40E_L4_GLQF_ORT_IDX),
			  FUNC1(I40E_FLEX_PIT_IDX_START_L4,
					    3, 1));
}