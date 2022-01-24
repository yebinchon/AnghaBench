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
struct scatterlist {int dummy; } ;
struct mmc_test_card {int* scratch; int* buffer; } ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 int EINVAL ; 
 int RESULT_FAIL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mmc_test_card*,int*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mmc_test_card*,int) ; 
 int FUNC5 (struct mmc_test_card*,struct scatterlist*,unsigned int,unsigned int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,unsigned int,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,unsigned int,int*,int) ; 

__attribute__((used)) static int FUNC8(struct mmc_test_card *test,
	struct scatterlist *sg, unsigned sg_len, unsigned dev_addr,
	unsigned blocks, unsigned blksz, int write)
{
	int ret, i;
	unsigned long flags;

	if (write) {
		for (i = 0; i < blocks * blksz; i++)
			test->scratch[i] = i;
	} else {
		FUNC2(test->scratch, 0, BUFFER_SIZE);
	}
	FUNC1(flags);
	FUNC6(sg, sg_len, test->scratch, BUFFER_SIZE);
	FUNC0(flags);

	ret = FUNC4(test, blksz);
	if (ret)
		return ret;

	ret = FUNC5(test, sg, sg_len, dev_addr,
		blocks, blksz, write);
	if (ret)
		return ret;

	if (write) {
		int sectors;

		ret = FUNC4(test, 512);
		if (ret)
			return ret;

		sectors = (blocks * blksz + 511) / 512;
		if ((sectors * 512) == (blocks * blksz))
			sectors++;

		if ((sectors * 512) > BUFFER_SIZE)
			return -EINVAL;

		FUNC2(test->buffer, 0, sectors * 512);

		for (i = 0; i < sectors; i++) {
			ret = FUNC3(test,
				test->buffer + i * 512,
				dev_addr + i, 512, 0);
			if (ret)
				return ret;
		}

		for (i = 0; i < blocks * blksz; i++) {
			if (test->buffer[i] != (u8)i)
				return RESULT_FAIL;
		}

		for (; i < sectors * 512; i++) {
			if (test->buffer[i] != 0xDF)
				return RESULT_FAIL;
		}
	} else {
		FUNC1(flags);
		FUNC7(sg, sg_len, test->scratch, BUFFER_SIZE);
		FUNC0(flags);
		for (i = 0; i < blocks * blksz; i++) {
			if (test->scratch[i] != (u8)i)
				return RESULT_FAIL;
		}
	}

	return 0;
}