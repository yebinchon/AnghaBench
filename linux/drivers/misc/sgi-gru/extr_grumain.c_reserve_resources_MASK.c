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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long*) ; 
 int FUNC3 (unsigned long*,int) ; 

__attribute__((used)) static unsigned long FUNC4(unsigned long *p, int n, int mmax,
				       char *idx)
{
	unsigned long bits = 0;
	int i;

	while (n--) {
		i = FUNC3(p, mmax);
		if (i == mmax)
			FUNC0();
		FUNC1(i, p);
		FUNC2(i, &bits);
		if (idx)
			*idx++ = i;
	}
	return bits;
}