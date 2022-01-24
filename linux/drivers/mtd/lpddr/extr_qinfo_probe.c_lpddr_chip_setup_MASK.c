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
struct qinfo_chip {int dummy; } ;
struct map_info {scalar_t__ pfow_base; } ;
struct lpddr_private {TYPE_1__* qinfo; void* DevId; void* ManufactId; } ;
struct TYPE_2__ {void* BlockEraseTime; void* ProgBufferTime; void* SingleWordProgTime; void* SuspEraseSupp; void* UniformBlockSizeShift; void* HWPartsNum; void* BufSizeShift; void* TotalBlocksNum; void* DevSizeShift; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PFOW_DEVICE_ID ; 
 scalar_t__ PFOW_MANUFACTURER_ID ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct map_info*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct map_info*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct map_info *map, struct lpddr_private *lpddr)
{

	lpddr->qinfo = FUNC1(sizeof(struct qinfo_chip), GFP_KERNEL);
	if (!lpddr->qinfo)
		return 0;

	/* Get the ManuID */
	lpddr->ManufactId = FUNC0(FUNC3(map, map->pfow_base + PFOW_MANUFACTURER_ID));
	/* Get the DeviceID */
	lpddr->DevId = FUNC0(FUNC3(map, map->pfow_base + PFOW_DEVICE_ID));
	/* read parameters from chip qinfo table */
	lpddr->qinfo->DevSizeShift = FUNC2(map, "DevSizeShift");
	lpddr->qinfo->TotalBlocksNum = FUNC2(map, "TotalBlocksNum");
	lpddr->qinfo->BufSizeShift = FUNC2(map, "BufSizeShift");
	lpddr->qinfo->HWPartsNum = FUNC2(map, "HWPartsNum");
	lpddr->qinfo->UniformBlockSizeShift =
				FUNC2(map, "UniformBlockSizeShift");
	lpddr->qinfo->SuspEraseSupp = FUNC2(map, "SuspEraseSupp");
	lpddr->qinfo->SingleWordProgTime =
				FUNC2(map, "SingleWordProgTime");
	lpddr->qinfo->ProgBufferTime = FUNC2(map, "ProgBufferTime");
	lpddr->qinfo->BlockEraseTime = FUNC2(map, "BlockEraseTime");
	return 1;
}