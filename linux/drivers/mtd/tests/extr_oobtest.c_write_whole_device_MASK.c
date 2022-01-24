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
 scalar_t__* bbt ; 
 unsigned int ebcnt ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(void)
{
	int err;
	unsigned int i;

	FUNC1("writing OOBs of whole device\n");
	for (i = 0; i < ebcnt; ++i) {
		if (bbt[i])
			continue;
		err = FUNC2(i);
		if (err)
			return err;
		if (i % 256 == 0)
			FUNC1("written up to eraseblock %u\n", i);

		err = FUNC0();
		if (err)
			return err;
	}
	FUNC1("written %u eraseblocks\n", i);
	return 0;
}