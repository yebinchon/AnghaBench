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
struct TYPE_2__ {scalar_t__ blank_nvm_mode; } ;
struct ice_hw {TYPE_1__ nvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_NVM_RES_ID ; 
 int /*<<< orphan*/  FUNC0 (struct ice_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ice_hw *hw)
{
	if (hw->nvm.blank_nvm_mode)
		return;

	FUNC0(hw, ICE_NVM_RES_ID);
}