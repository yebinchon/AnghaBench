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
struct mmc_test_card {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int FUNC0 (struct mmc_test_card*,struct scatterlist*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct mmc_test_card *test)
{
	struct scatterlist sg;

	FUNC1(&sg, test->buffer, 512);

	return FUNC0(test, &sg, 1, 0, 1, 512, 0);
}