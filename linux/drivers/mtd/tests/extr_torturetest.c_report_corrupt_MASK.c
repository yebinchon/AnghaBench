#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t erasesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (unsigned char*,unsigned char*,int,int,int*,int*) ; 
 TYPE_1__* mtd ; 
 int pgcnt ; 
 int pgsize ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(unsigned char *read, unsigned char *written)
{
	int i;
	int bytes, bits, pages, first;
	int offset, len;
	size_t check_len = mtd->erasesize;

	if (pgcnt)
		check_len = pgcnt * pgsize;

	bytes = bits = pages = 0;
	for (i = 0; i < check_len; i += pgsize)
		if (FUNC1(written, read, i, pgsize, &bytes,
			       &bits) >= 0)
			pages++;

	FUNC2("verify fails on %d pages, %d bytes/%d bits\n",
	       pages, bytes, bits);
	FUNC2("The following is a list of all differences between"
	       " what was read from flash and what was expected\n");

	for (i = 0; i < check_len; i += pgsize) {
		FUNC0();
		bytes = bits = 0;
		first = FUNC1(written, read, i, pgsize, &bytes,
				   &bits);
		if (first < 0)
			continue;

		FUNC4("-------------------------------------------------------"
		       "----------------------------------\n");

		FUNC2("Page %zd has %d bytes/%d bits failing verify,"
		       " starting at offset 0x%x\n",
		       (mtd->erasesize - check_len + i) / pgsize,
		       bytes, bits, first);

		offset = first & ~0x7;
		len = ((first + bytes) | 0x7) + 1 - offset;

		FUNC3(read, written, offset, len);
	}
}