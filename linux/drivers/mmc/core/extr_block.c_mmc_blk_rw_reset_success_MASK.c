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
struct request {int dummy; } ;
struct mmc_queue {int /*<<< orphan*/  blkdata; } ;

/* Variables and functions */
 int MMC_BLK_READ ; 
 int MMC_BLK_WRITE ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct request*) ; 

__attribute__((used)) static inline void FUNC2(struct mmc_queue *mq,
					    struct request *req)
{
	int type = FUNC1(req) == READ ? MMC_BLK_READ : MMC_BLK_WRITE;

	FUNC0(mq->blkdata, type);
}