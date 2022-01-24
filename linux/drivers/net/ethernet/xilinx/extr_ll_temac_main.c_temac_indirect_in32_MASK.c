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
struct temac_local {int /*<<< orphan*/  indirect_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC2 (struct temac_local*,int) ; 

u32 FUNC3(struct temac_local *lp, int reg)
{
	unsigned long flags;
	int val;

	FUNC0(lp->indirect_lock, flags);
	val = FUNC2(lp, reg);
	FUNC1(lp->indirect_lock, flags);
	return val;
}