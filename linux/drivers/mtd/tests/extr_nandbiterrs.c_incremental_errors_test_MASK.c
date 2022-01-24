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
struct TYPE_2__ {unsigned int writesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (unsigned int) ; 
 TYPE_1__* mtd ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 scalar_t__ seed ; 
 unsigned int subcount ; 
 unsigned int subsize ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/ * wbuffer ; 
 int FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(void)
{
	int err = 0;
	unsigned i;
	unsigned errs_per_subpage = 0;

	FUNC3("incremental biterrors test\n");

	for (i = 0; i < mtd->writesize; i++)
		wbuffer[i] = FUNC0(i+seed);

	err = FUNC7(1);
	if (err)
		goto exit;

	while (1) {

		err = FUNC5(1);
		if (err)
			goto exit;

		err = FUNC4(1);
		if (err > 0)
			FUNC3("Read reported %d corrected bit errors\n", err);
		if (err < 0) {
			FUNC2("After %d biterrors per subpage, read reported error %d\n",
				errs_per_subpage, err);
			err = 0;
			goto exit;
		}

		err = FUNC6(1);
		if (err) {
			FUNC2("ECC failure, read data is incorrect despite read success\n");
			goto exit;
		}

		FUNC3("Successfully corrected %d bit errors per subpage\n",
			errs_per_subpage);

		for (i = 0; i < subcount; i++) {
			err = FUNC1(i * subsize);
			if (err < 0)
				goto exit;
		}
		errs_per_subpage++;
	}

exit:
	return err;
}