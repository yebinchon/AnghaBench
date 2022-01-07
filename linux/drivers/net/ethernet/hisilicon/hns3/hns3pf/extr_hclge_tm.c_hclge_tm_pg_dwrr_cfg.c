
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {size_t num_pg; int * pg_dwrr; } ;
struct hclge_dev {scalar_t__ tx_sch_mode; TYPE_1__ tm_info; } ;


 scalar_t__ HCLGE_FLAG_TC_BASE_SCH_MODE ;
 int hclge_tm_pg_weight_cfg (struct hclge_dev*,size_t,int ) ;

__attribute__((used)) static int hclge_tm_pg_dwrr_cfg(struct hclge_dev *hdev)
{
 int ret;
 u32 i;


 if (hdev->tx_sch_mode != HCLGE_FLAG_TC_BASE_SCH_MODE)
  return 0;


 for (i = 0; i < hdev->tm_info.num_pg; i++) {

  ret = hclge_tm_pg_weight_cfg(hdev, i, hdev->tm_info.pg_dwrr[i]);
  if (ret)
   return ret;
 }

 return 0;
}
