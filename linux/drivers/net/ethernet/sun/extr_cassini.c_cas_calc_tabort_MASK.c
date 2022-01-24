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
struct cas {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 int FUNC1 (struct cas*) ; 
 unsigned long TX_TARGET_ABORT_LEN ; 

__attribute__((used)) static inline int FUNC2(struct cas *cp, const unsigned long addr,
				  const int len)
{
	unsigned long off = addr + len;

	if (FUNC1(cp) == 1)
		return 0;
	if ((FUNC0(off) - off) > TX_TARGET_ABORT_LEN)
		return 0;
	return TX_TARGET_ABORT_LEN;
}