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

/* Variables and functions */
 int ENOSPC ; 
 unsigned long FUNC0 (unsigned long*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned long,unsigned int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(unsigned long *bmap,
				   unsigned int max_ppods,
				   unsigned int start,
				   unsigned int nr,
				   unsigned int align_mask)
{
	unsigned long i;

	i = FUNC0(bmap, max_ppods, start, nr, align_mask);

	if (FUNC2(i >= max_ppods) && (start > nr))
		i = FUNC0(bmap, max_ppods, 0, start - 1,
					       align_mask);
	if (FUNC2(i >= max_ppods))
		return -ENOSPC;

	FUNC1(bmap, i, nr);
	return (int)i;
}