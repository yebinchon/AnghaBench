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
struct mmc_test_card {TYPE_1__* card; } ;
struct mmc_request {struct mmc_command* stop; struct mmc_data* data; struct mmc_command* cmd; } ;
struct mmc_data {int dummy; } ;
struct mmc_command {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FUNC0 (struct mmc_test_card*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_test_card*,struct mmc_request*,struct scatterlist*,unsigned int,unsigned int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_test_card*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mmc_request*) ; 

__attribute__((used)) static int FUNC4(struct mmc_test_card *test,
	struct scatterlist *sg, unsigned sg_len, unsigned dev_addr,
	unsigned blocks, unsigned blksz, int write)
{
	struct mmc_request mrq = {};
	struct mmc_command cmd = {};
	struct mmc_command stop = {};
	struct mmc_data data = {};

	mrq.cmd = &cmd;
	mrq.data = &data;
	mrq.stop = &stop;

	FUNC1(test, &mrq, sg, sg_len, dev_addr,
		blocks, blksz, write);

	FUNC3(test->card->host, &mrq);

	FUNC2(test);

	return FUNC0(test, &mrq);
}