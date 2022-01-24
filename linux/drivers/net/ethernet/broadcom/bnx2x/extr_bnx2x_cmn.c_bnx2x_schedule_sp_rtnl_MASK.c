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
struct bnx2x {int /*<<< orphan*/  sp_rtnl_task; int /*<<< orphan*/  sp_rtnl_state; } ;
typedef  enum sp_rtnl_flag { ____Placeholder_sp_rtnl_flag } sp_rtnl_flag ;

/* Variables and functions */
 int BNX2X_MSG_SP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct bnx2x *bp, enum sp_rtnl_flag flag,
			    u32 verbose)
{
	FUNC4();
	FUNC2(flag, &bp->sp_rtnl_state);
	FUNC3();
	FUNC0((BNX2X_MSG_SP | verbose), "Scheduling sp_rtnl task [Flag: %d]\n",
	   flag);
	FUNC1(&bp->sp_rtnl_task, 0);
}