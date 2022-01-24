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
struct sh_mmcif_host {int blocksize; int /*<<< orphan*/  pio_ptr; scalar_t__ sg_blkidx; scalar_t__ sg_idx; int /*<<< orphan*/  wait_for; int /*<<< orphan*/  addr; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_data {TYPE_1__* sg; int /*<<< orphan*/  sg_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int BLOCK_SIZE_MASK ; 
 int /*<<< orphan*/  MASK_MBUFREN ; 
 int /*<<< orphan*/  MMCIF_CE_BLOCK_SET ; 
 int /*<<< orphan*/  MMCIF_CE_INT_MASK ; 
 int /*<<< orphan*/  MMCIF_WAIT_FOR_MREAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mmcif_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sh_mmcif_host *host,
				struct mmc_request *mrq)
{
	struct mmc_data *data = mrq->data;

	if (!data->sg_len || !data->sg->length)
		return;

	host->blocksize = FUNC2(host->addr, MMCIF_CE_BLOCK_SET) &
		BLOCK_SIZE_MASK;

	host->wait_for = MMCIF_WAIT_FOR_MREAD;
	host->sg_idx = 0;
	host->sg_blkidx = 0;
	host->pio_ptr = FUNC0(data->sg);

	FUNC1(host, MMCIF_CE_INT_MASK, MASK_MBUFREN);
}