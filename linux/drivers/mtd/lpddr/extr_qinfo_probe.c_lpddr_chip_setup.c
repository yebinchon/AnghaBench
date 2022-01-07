
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qinfo_chip {int dummy; } ;
struct map_info {scalar_t__ pfow_base; } ;
struct lpddr_private {TYPE_1__* qinfo; void* DevId; void* ManufactId; } ;
struct TYPE_2__ {void* BlockEraseTime; void* ProgBufferTime; void* SingleWordProgTime; void* SuspEraseSupp; void* UniformBlockSizeShift; void* HWPartsNum; void* BufSizeShift; void* TotalBlocksNum; void* DevSizeShift; } ;


 void* CMDVAL (int ) ;
 int GFP_KERNEL ;
 scalar_t__ PFOW_DEVICE_ID ;
 scalar_t__ PFOW_MANUFACTURER_ID ;
 TYPE_1__* kzalloc (int,int ) ;
 void* lpddr_info_query (struct map_info*,char*) ;
 int map_read (struct map_info*,scalar_t__) ;

__attribute__((used)) static int lpddr_chip_setup(struct map_info *map, struct lpddr_private *lpddr)
{

 lpddr->qinfo = kzalloc(sizeof(struct qinfo_chip), GFP_KERNEL);
 if (!lpddr->qinfo)
  return 0;


 lpddr->ManufactId = CMDVAL(map_read(map, map->pfow_base + PFOW_MANUFACTURER_ID));

 lpddr->DevId = CMDVAL(map_read(map, map->pfow_base + PFOW_DEVICE_ID));

 lpddr->qinfo->DevSizeShift = lpddr_info_query(map, "DevSizeShift");
 lpddr->qinfo->TotalBlocksNum = lpddr_info_query(map, "TotalBlocksNum");
 lpddr->qinfo->BufSizeShift = lpddr_info_query(map, "BufSizeShift");
 lpddr->qinfo->HWPartsNum = lpddr_info_query(map, "HWPartsNum");
 lpddr->qinfo->UniformBlockSizeShift =
    lpddr_info_query(map, "UniformBlockSizeShift");
 lpddr->qinfo->SuspEraseSupp = lpddr_info_query(map, "SuspEraseSupp");
 lpddr->qinfo->SingleWordProgTime =
    lpddr_info_query(map, "SingleWordProgTime");
 lpddr->qinfo->ProgBufferTime = lpddr_info_query(map, "ProgBufferTime");
 lpddr->qinfo->BlockEraseTime = lpddr_info_query(map, "BlockEraseTime");
 return 1;
}
