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
struct ice_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PFINT_FW_CTL ; 
 int PFINT_FW_CTL_CAUSE_ENA_M ; 
 int /*<<< orphan*/  PFINT_MBX_CTL ; 
 int PFINT_MBX_CTL_CAUSE_ENA_M ; 
 int /*<<< orphan*/  PFINT_OICR_CTL ; 
 int PFINT_OICR_CTL_CAUSE_ENA_M ; 
 int /*<<< orphan*/  FUNC0 (struct ice_hw*) ; 
 int FUNC1 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ice_hw *hw)
{
	/* disable Admin queue Interrupt causes */
	FUNC2(hw, PFINT_FW_CTL,
	     FUNC1(hw, PFINT_FW_CTL) & ~PFINT_FW_CTL_CAUSE_ENA_M);

	/* disable Mailbox queue Interrupt causes */
	FUNC2(hw, PFINT_MBX_CTL,
	     FUNC1(hw, PFINT_MBX_CTL) & ~PFINT_MBX_CTL_CAUSE_ENA_M);

	/* disable Control queue Interrupt causes */
	FUNC2(hw, PFINT_OICR_CTL,
	     FUNC1(hw, PFINT_OICR_CTL) & ~PFINT_OICR_CTL_CAUSE_ENA_M);

	FUNC0(hw);
}