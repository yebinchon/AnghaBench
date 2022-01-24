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
struct scatterlist {int dummy; } ;
struct mmc_test_card {TYPE_1__* card; int /*<<< orphan*/  buffer; } ;
struct mmc_request {struct mmc_command* stop; struct mmc_data* data; struct mmc_command* cmd; } ;
struct mmc_data {int dummy; } ;
struct mmc_command {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FUNC0 (struct mmc_test_card*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_test_card*,struct mmc_request*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_test_card*,struct mmc_request*,struct scatterlist*,int,int /*<<< orphan*/ ,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_test_card*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct mmc_test_card *test,
	unsigned blocks, unsigned blksz, int write)
{
	struct mmc_request mrq = {};
	struct mmc_command cmd = {};
	struct mmc_command stop = {};
	struct mmc_data data = {};

	struct scatterlist sg;

	mrq.cmd = &cmd;
	mrq.data = &data;
	mrq.stop = &stop;

	FUNC5(&sg, test->buffer, blocks * blksz);

	FUNC2(test, &mrq, &sg, 1, 0, blocks, blksz, write);
	FUNC1(test, &mrq, write);

	FUNC4(test->card->host, &mrq);

	FUNC3(test);

	return FUNC0(test, &mrq);
}