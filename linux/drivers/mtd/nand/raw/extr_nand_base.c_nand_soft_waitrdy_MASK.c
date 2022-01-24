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
typedef  int u8 ;
struct nand_sdr_timings {int /*<<< orphan*/  tWB_max; } ;
struct nand_chip {int /*<<< orphan*/  data_interface; } ;
typedef  int /*<<< orphan*/  status ;

/* Variables and functions */
 int ENOTSUPP ; 
 int ETIMEDOUT ; 
 int NAND_STATUS_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 struct nand_sdr_timings* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 
 int FUNC5 (struct nand_chip*,int*,int,int) ; 
 int FUNC6 (struct nand_chip*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(struct nand_chip *chip, unsigned long timeout_ms)
{
	const struct nand_sdr_timings *timings;
	u8 status = 0;
	int ret;

	if (!FUNC4(chip))
		return -ENOTSUPP;

	/* Wait tWB before polling the STATUS reg. */
	timings = FUNC3(&chip->data_interface);
	FUNC7(FUNC0(timings->tWB_max));

	ret = FUNC6(chip, NULL);
	if (ret)
		return ret;

	timeout_ms = jiffies + FUNC1(timeout_ms);
	do {
		ret = FUNC5(chip, &status, sizeof(status), true);
		if (ret)
			break;

		if (status & NAND_STATUS_READY)
			break;

		/*
		 * Typical lowest execution time for a tR on most NANDs is 10us,
		 * use this as polling delay before doing something smarter (ie.
		 * deriving a delay from the timeout value, timeout_ms/ratio).
		 */
		FUNC9(10);
	} while	(FUNC8(jiffies, timeout_ms));

	/*
	 * We have to exit READ_STATUS mode in order to read real data on the
	 * bus in case the WAITRDY instruction is preceding a DATA_IN
	 * instruction.
	 */
	FUNC2(chip);

	if (ret)
		return ret;

	return status & NAND_STATUS_READY ? 0 : -ETIMEDOUT;
}