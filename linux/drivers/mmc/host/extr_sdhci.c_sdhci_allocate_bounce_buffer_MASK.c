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
struct sdhci_host {unsigned int bounce_buffer_size; int /*<<< orphan*/  bounce_addr; int /*<<< orphan*/  bounce_buffer; struct mmc_host* mmc; } ;
struct mmc_host {unsigned int max_req_size; unsigned int max_segs; unsigned int max_seg_size; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int SZ_64K ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct sdhci_host *host)
{
	struct mmc_host *mmc = host->mmc;
	unsigned int max_blocks;
	unsigned int bounce_size;
	int ret;

	/*
	 * Cap the bounce buffer at 64KB. Using a bigger bounce buffer
	 * has diminishing returns, this is probably because SD/MMC
	 * cards are usually optimized to handle this size of requests.
	 */
	bounce_size = SZ_64K;
	/*
	 * Adjust downwards to maximum request size if this is less
	 * than our segment size, else hammer down the maximum
	 * request size to the maximum buffer size.
	 */
	if (mmc->max_req_size < bounce_size)
		bounce_size = mmc->max_req_size;
	max_blocks = bounce_size / 512;

	/*
	 * When we just support one segment, we can get significant
	 * speedups by the help of a bounce buffer to group scattered
	 * reads/writes together.
	 */
	host->bounce_buffer = FUNC0(mmc->parent,
					   bounce_size,
					   GFP_KERNEL);
	if (!host->bounce_buffer) {
		FUNC4("%s: failed to allocate %u bytes for bounce buffer, falling back to single segments\n",
		       FUNC3(mmc),
		       bounce_size);
		/*
		 * Exiting with zero here makes sure we proceed with
		 * mmc->max_segs == 1.
		 */
		return;
	}

	host->bounce_addr = FUNC1(mmc->parent,
					   host->bounce_buffer,
					   bounce_size,
					   DMA_BIDIRECTIONAL);
	ret = FUNC2(mmc->parent, host->bounce_addr);
	if (ret)
		/* Again fall back to max_segs == 1 */
		return;
	host->bounce_buffer_size = bounce_size;

	/* Lie about this since we're bouncing */
	mmc->max_segs = max_blocks;
	mmc->max_seg_size = bounce_size;
	mmc->max_req_size = bounce_size;

	FUNC5("%s bounce up to %u segments into one, max segment size %u bytes\n",
		FUNC3(mmc), max_blocks, bounce_size);
}