#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mmc_queue {int /*<<< orphan*/  wait; int /*<<< orphan*/  complete_lock; int /*<<< orphan*/  complete_work; int /*<<< orphan*/  recovery_work; int /*<<< orphan*/  queue; } ;
struct mmc_host {int max_req_size; int /*<<< orphan*/  max_seg_size; scalar_t__ can_dma_map_merge; int /*<<< orphan*/  max_blk_count; } ;
struct TYPE_5__ {unsigned int data_sector_size; } ;
struct mmc_card {TYPE_1__ ext_csd; struct mmc_host* host; } ;
struct TYPE_6__ {int /*<<< orphan*/ * dma_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_BOUNCE_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QUEUE_FLAG_ADD_RANDOM ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmc_blk_mq_complete_work ; 
 scalar_t__ FUNC13 (struct mmc_card*) ; 
 scalar_t__ FUNC14 (struct mmc_card*) ; 
 TYPE_2__* FUNC15 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC16 (struct mmc_host*) ; 
 int /*<<< orphan*/  mmc_mq_recovery_handler ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC21(struct mmc_queue *mq, struct mmc_card *card)
{
	struct mmc_host *host = card->host;
	unsigned block_size = 512;

	FUNC5(QUEUE_FLAG_NONROT, mq->queue);
	FUNC4(QUEUE_FLAG_ADD_RANDOM, mq->queue);
	if (FUNC13(card))
		FUNC17(mq->queue, card);

	if (!FUNC15(host)->dma_mask || !*FUNC15(host)->dma_mask)
		FUNC2(mq->queue, BLK_BOUNCE_HIGH);
	FUNC7(mq->queue,
		FUNC12(host->max_blk_count, host->max_req_size / 512));
	if (host->can_dma_map_merge)
		FUNC1(!FUNC3(mq->queue,
							FUNC15(host)),
		     "merging was advertised but not possible");
	FUNC9(mq->queue, FUNC16(host));

	if (FUNC14(card))
		block_size = card->ext_csd.data_sector_size;

	FUNC6(mq->queue, block_size);
	/*
	 * After blk_queue_can_use_dma_map_merging() was called with succeed,
	 * since it calls blk_queue_virt_boundary(), the mmc should not call
	 * both blk_queue_max_segment_size().
	 */
	if (!host->can_dma_map_merge)
		FUNC8(mq->queue,
			FUNC20(host->max_seg_size, block_size));

	FUNC10(FUNC15(host), FUNC19(mq->queue));

	FUNC0(&mq->recovery_work, mmc_mq_recovery_handler);
	FUNC0(&mq->complete_work, mmc_blk_mq_complete_work);

	FUNC18(&mq->complete_lock);

	FUNC11(&mq->wait);
}