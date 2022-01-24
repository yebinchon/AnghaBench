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
 int /*<<< orphan*/  MBX_PF_VT_PFALLOC ; 
 int /*<<< orphan*/  PF_VT_PFALLOC_HIF ; 
 int /*<<< orphan*/  FUNC0 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct ice_hw *hw)
{
#define MBX_PF_VT_PFALLOC	0x00231E80
	/* set VFs per PF */
	FUNC1(hw, MBX_PF_VT_PFALLOC, FUNC0(hw, PF_VT_PFALLOC_HIF));
}