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
struct muram_info {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct muram_info*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,size_t) ; 

void FUNC2(struct muram_info *muram, unsigned long offset,
			 size_t size)
{
	unsigned long addr = FUNC0(muram, offset);

	FUNC1(muram->pool, addr, size);
}