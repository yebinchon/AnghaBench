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
typedef  int /*<<< orphan*/  u8 ;
struct ice_hw {int dummy; } ;
struct ice_aq_desc {int /*<<< orphan*/  datalen; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_DBG_FW_LOG ; 
 int /*<<< orphan*/  FUNC0 (struct ice_hw*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf)
{
	FUNC0(hw, ICE_DBG_FW_LOG, "[ FW Log Msg Start ]\n");
	FUNC1(hw, ICE_DBG_FW_LOG, 16, 1, (u8 *)buf,
			FUNC2(desc->datalen));
	FUNC0(hw, ICE_DBG_FW_LOG, "[ FW Log Msg End ]\n");
}