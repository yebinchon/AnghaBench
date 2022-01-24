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
typedef  unsigned long u32 ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(atomic_t *flags, u32 mask)
{
	unsigned long flags_old, flags_new;

	do {
		flags_old = FUNC1(flags);
		flags_new = flags_old & ~(mask);
	} while (FUNC0(flags, flags_old, flags_new) != flags_old);
}