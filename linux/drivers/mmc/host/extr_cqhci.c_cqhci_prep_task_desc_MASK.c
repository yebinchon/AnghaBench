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
typedef  int u64 ;
typedef  int u32 ;
struct mmc_request {int /*<<< orphan*/  tag; int /*<<< orphan*/  host; TYPE_1__* data; } ;
struct TYPE_2__ {int flags; scalar_t__ blk_addr; int /*<<< orphan*/  blocks; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int MMC_DATA_DAT_TAG ; 
 int MMC_DATA_FORCED_PRG ; 
 int MMC_DATA_PRIO ; 
 int MMC_DATA_QBR ; 
 int MMC_DATA_READ ; 
 int MMC_DATA_REL_WR ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC14(struct mmc_request *mrq,
					u64 *data, bool intr)
{
	u32 req_flags = mrq->data->flags;

	*data = FUNC11(1) |
		FUNC5(1) |
		FUNC7(intr) |
		FUNC0(0x5) |
		FUNC6(!!(req_flags & MMC_DATA_FORCED_PRG)) |
		FUNC4(!!(req_flags & MMC_DATA_DAT_TAG)) |
		FUNC3(!!(req_flags & MMC_DATA_READ)) |
		FUNC8(!!(req_flags & MMC_DATA_PRIO)) |
		FUNC9(!!(req_flags & MMC_DATA_QBR)) |
		FUNC10(!!(req_flags & MMC_DATA_REL_WR)) |
		FUNC2(mrq->data->blocks) |
		FUNC1((u64)mrq->data->blk_addr);

	FUNC13("%s: cqhci: tag %d task descriptor 0x016%llx\n",
		 FUNC12(mrq->host), mrq->tag, (unsigned long long)*data);
}