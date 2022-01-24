#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* mapped; int /*<<< orphan*/  page; } ;
struct usdhi6_host {size_t offset; size_t head_len; void* blk_page; TYPE_3__* mrq; TYPE_1__ pg; int /*<<< orphan*/  mmc; struct scatterlist* sg; } ;
struct scatterlist {size_t offset; } ;
struct mmc_data {int sg_len; size_t blksz; struct scatterlist* sg; } ;
struct TYPE_6__ {TYPE_2__* cmd; struct mmc_data* data; } ;
struct TYPE_5__ {int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 size_t PAGE_SIZE ; 
 scalar_t__ FUNC0 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ,TYPE_3__*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC7 (struct usdhi6_host*,struct scatterlist*) ; 

__attribute__((used)) static void *FUNC8(struct usdhi6_host *host)
{
	struct mmc_data *data = host->mrq->data;
	struct scatterlist *sg = data->sg_len > 1 ? host->sg : data->sg;
	size_t head = PAGE_SIZE - sg->offset;
	size_t blk_head = head % data->blksz;

	FUNC0(host->pg.page, "%p not properly unmapped!\n", host->pg.page);
	if (FUNC0(FUNC5(sg) % data->blksz,
		 "SG size %u isn't a multiple of block size %u\n",
		 FUNC5(sg), data->blksz))
		return NULL;

	host->pg.page = FUNC6(sg);
	host->pg.mapped = FUNC2(host->pg.page);
	host->offset = sg->offset;

	/*
	 * Block size must be a power of 2 for multi-block transfers,
	 * therefore blk_head is equal for all pages in this SG
	 */
	host->head_len = blk_head;

	if (head < data->blksz)
		/*
		 * The first block in the SG crosses a page boundary.
		 * Max blksz = 512, so blocks can only span 2 pages
		 */
		FUNC7(host, sg);
	else
		host->blk_page = host->pg.mapped;

	FUNC1(FUNC3(host->mmc), "Mapped %p (%lx) at %p + %u for CMD%u @ 0x%p\n",
		host->pg.page, FUNC4(host->pg.page), host->pg.mapped,
		sg->offset, host->mrq->cmd->opcode, host->mrq);

	return host->blk_page + host->offset;
}