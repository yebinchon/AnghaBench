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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct e1000_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int E1000_P2VMAILBOX_PFU ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC3(struct e1000_hw *hw, u16 vf_number)
{
	u32 p2v_mailbox;

	/* drop PF lock of mailbox, if set */
	p2v_mailbox = FUNC1(FUNC0(vf_number));
	if (p2v_mailbox & E1000_P2VMAILBOX_PFU)
		FUNC2(FUNC0(vf_number),
		     p2v_mailbox & ~E1000_P2VMAILBOX_PFU);

	return 0;
}