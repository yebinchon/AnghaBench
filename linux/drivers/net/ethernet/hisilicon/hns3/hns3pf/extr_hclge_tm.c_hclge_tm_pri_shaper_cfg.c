
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {scalar_t__ tx_sch_mode; } ;


 scalar_t__ HCLGE_FLAG_TC_BASE_SCH_MODE ;
 int hclge_tm_pri_tc_base_shaper_cfg (struct hclge_dev*) ;
 int hclge_tm_pri_vnet_base_shaper_cfg (struct hclge_dev*) ;

__attribute__((used)) static int hclge_tm_pri_shaper_cfg(struct hclge_dev *hdev)
{
 int ret;

 if (hdev->tx_sch_mode == HCLGE_FLAG_TC_BASE_SCH_MODE) {
  ret = hclge_tm_pri_tc_base_shaper_cfg(hdev);
  if (ret)
   return ret;
 } else {
  ret = hclge_tm_pri_vnet_base_shaper_cfg(hdev);
  if (ret)
   return ret;
 }

 return 0;
}
