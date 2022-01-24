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
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HBUS_TARG_PRPH_WADDR ; 
 int /*<<< orphan*/  HBUS_TARG_PRPH_WDAT ; 
 int FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct iwl_trans *trans, u32 addr,
				      u32 val)
{
	u32 mask = FUNC0(trans);

	FUNC1(trans, HBUS_TARG_PRPH_WADDR,
			       ((addr & mask) | (3 << 24)));
	FUNC1(trans, HBUS_TARG_PRPH_WDAT, val);
}