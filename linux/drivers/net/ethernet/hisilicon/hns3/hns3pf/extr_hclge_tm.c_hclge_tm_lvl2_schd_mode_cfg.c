
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ num_pg; } ;
struct hclge_dev {scalar_t__ tx_sch_mode; TYPE_1__ tm_info; } ;


 scalar_t__ HCLGE_FLAG_VNET_BASE_SCH_MODE ;
 int hclge_tm_pg_schd_mode_cfg (struct hclge_dev*,scalar_t__) ;

__attribute__((used)) static int hclge_tm_lvl2_schd_mode_cfg(struct hclge_dev *hdev)
{
 int ret;
 u8 i;


 if (hdev->tx_sch_mode == HCLGE_FLAG_VNET_BASE_SCH_MODE)
  return 0;

 for (i = 0; i < hdev->tm_info.num_pg; i++) {
  ret = hclge_tm_pg_schd_mode_cfg(hdev, i);
  if (ret)
   return ret;
 }

 return 0;
}
