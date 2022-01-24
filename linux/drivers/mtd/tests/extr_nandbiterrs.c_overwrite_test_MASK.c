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
typedef  int /*<<< orphan*/  bitstats ;
struct TYPE_2__ {unsigned int writesize; } ;

/* Variables and functions */
 int EIO ; 
 int MAXBITS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 unsigned int max_overwrite ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* mtd ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ seed ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * wbuffer ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(void)
{
	int err = 0;
	unsigned i;
	unsigned max_corrected = 0;
	unsigned opno = 0;
	/* We don't expect more than this many correctable bit errors per
	 * page. */
	#define MAXBITS 512
	static unsigned bitstats[MAXBITS]; /* bit error histogram. */

	FUNC1(bitstats, 0, sizeof(bitstats));

	FUNC3("overwrite biterrors test\n");

	for (i = 0; i < mtd->writesize; i++)
		wbuffer[i] = FUNC0(i+seed);

	err = FUNC6(1);
	if (err)
		goto exit;

	while (opno < max_overwrite) {

		err = FUNC6(0);
		if (err)
			break;

		err = FUNC4(0);
		if (err >= 0) {
			if (err >= MAXBITS) {
				FUNC3("Implausible number of bit errors corrected\n");
				err = -EIO;
				break;
			}
			bitstats[err]++;
			if (err > max_corrected) {
				max_corrected = err;
				FUNC3("Read reported %d corrected bit errors\n",
					err);
			}
		} else { /* err < 0 */
			FUNC3("Read reported error %d\n", err);
			err = 0;
			break;
		}

		err = FUNC5(0);
		if (err) {
			bitstats[max_corrected] = opno;
			FUNC3("ECC failure, read data is incorrect despite read success\n");
			break;
		}

		err = FUNC2();
		if (err)
			break;

		opno++;
	}

	/* At this point bitstats[0] contains the number of ops with no bit
	 * errors, bitstats[1] the number of ops with 1 bit error, etc. */
	FUNC3("Bit error histogram (%d operations total):\n", opno);
	for (i = 0; i < max_corrected; i++)
		FUNC3("Page reads with %3d corrected bit errors: %d\n",
			i, bitstats[i]);

exit:
	return err;
}