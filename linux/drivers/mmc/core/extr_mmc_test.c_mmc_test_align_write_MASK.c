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
struct scatterlist {int dummy; } ;
struct mmc_test_card {scalar_t__ buffer; } ;

/* Variables and functions */
 int TEST_ALIGN_END ; 
 int FUNC0 (struct mmc_test_card*,struct scatterlist*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct mmc_test_card *test)
{
	int ret, i;
	struct scatterlist sg;

	for (i = 1; i < TEST_ALIGN_END; i++) {
		FUNC1(&sg, test->buffer + i, 512);
		ret = FUNC0(test, &sg, 1, 0, 1, 512, 1);
		if (ret)
			return ret;
	}

	return 0;
}