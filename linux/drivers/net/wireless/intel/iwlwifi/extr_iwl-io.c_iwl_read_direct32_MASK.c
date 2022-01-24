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
 int FUNC0 (struct iwl_trans*,int) ; 
 scalar_t__ FUNC1 (struct iwl_trans*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,unsigned long*) ; 

u32 FUNC3(struct iwl_trans *trans, u32 reg)
{
	u32 value = 0x5a5a5a5a;
	unsigned long flags;
	if (FUNC1(trans, &flags)) {
		value = FUNC0(trans, reg);
		FUNC2(trans, &flags);
	}

	return value;
}