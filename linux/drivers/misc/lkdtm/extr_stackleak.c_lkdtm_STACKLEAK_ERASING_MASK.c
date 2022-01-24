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
 unsigned long* FUNC0 (unsigned long*,int) ; 
 unsigned long STACKLEAK_POISON ; 
 int STACKLEAK_SEARCH_DEPTH ; 
 int THREAD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void FUNC3(void)
{
	unsigned long *sp, left, found, i;
	const unsigned long check_depth =
			STACKLEAK_SEARCH_DEPTH / sizeof(unsigned long);

	/*
	 * For the details about the alignment of the poison values, see
	 * the comment in stackleak_track_stack().
	 */
	sp = FUNC0(&i, sizeof(unsigned long));

	left = ((unsigned long)sp & (THREAD_SIZE - 1)) / sizeof(unsigned long);
	sp--;

	/*
	 * One 'long int' at the bottom of the thread stack is reserved
	 * and not poisoned.
	 */
	if (left > 1) {
		left--;
	} else {
		FUNC1("FAIL: not enough stack space for the test\n");
		return;
	}

	FUNC2("checking unused part of the thread stack (%lu bytes)...\n",
					left * sizeof(unsigned long));

	/*
	 * Search for 'check_depth' poison values in a row (just like
	 * stackleak_erase() does).
	 */
	for (i = 0, found = 0; i < left && found <= check_depth; i++) {
		if (*(sp - i) == STACKLEAK_POISON)
			found++;
		else
			found = 0;
	}

	if (found <= check_depth) {
		FUNC1("FAIL: thread stack is not erased (checked %lu bytes)\n",
						i * sizeof(unsigned long));
		return;
	}

	FUNC2("first %lu bytes are unpoisoned\n",
				(i - found) * sizeof(unsigned long));

	/* The rest of thread stack should be erased */
	for (; i < left; i++) {
		if (*(sp - i) != STACKLEAK_POISON) {
			FUNC1("FAIL: thread stack is NOT properly erased\n");
			return;
		}
	}

	FUNC2("OK: the rest of the thread stack is properly erased\n");
	return;
}