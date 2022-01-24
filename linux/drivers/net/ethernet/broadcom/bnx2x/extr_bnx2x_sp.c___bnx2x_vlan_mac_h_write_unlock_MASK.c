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
struct bnx2x_vlan_mac_obj {scalar_t__ head_exe_request; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_vlan_mac_obj*) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp,
					    struct bnx2x_vlan_mac_obj *o)
{
	/* It's possible a new pending execution was added since this writer
	 * executed. If so, execute again. [Ad infinitum]
	 */
	while (o->head_exe_request) {
		FUNC0(BNX2X_MSG_SP, "vlan_mac_lock - writer release encountered a pending request\n");
		FUNC1(bp, o);
	}
}