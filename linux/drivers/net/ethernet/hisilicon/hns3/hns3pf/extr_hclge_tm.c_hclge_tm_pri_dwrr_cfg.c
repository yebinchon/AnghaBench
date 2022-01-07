
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {scalar_t__ tx_sch_mode; int fw_version; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 scalar_t__ HCLGE_FLAG_TC_BASE_SCH_MODE ;
 int dev_warn (int *,char*,int ) ;
 int hclge_tm_ets_tc_dwrr_cfg (struct hclge_dev*) ;
 int hclge_tm_pri_tc_base_dwrr_cfg (struct hclge_dev*) ;
 int hclge_tm_pri_vnet_base_dwrr_cfg (struct hclge_dev*) ;
 int hnae3_dev_dcb_supported (struct hclge_dev*) ;

__attribute__((used)) static int hclge_tm_pri_dwrr_cfg(struct hclge_dev *hdev)
{
 int ret;

 if (hdev->tx_sch_mode == HCLGE_FLAG_TC_BASE_SCH_MODE) {
  ret = hclge_tm_pri_tc_base_dwrr_cfg(hdev);
  if (ret)
   return ret;

  if (!hnae3_dev_dcb_supported(hdev))
   return 0;

  ret = hclge_tm_ets_tc_dwrr_cfg(hdev);
  if (ret == -EOPNOTSUPP) {
   dev_warn(&hdev->pdev->dev,
     "fw %08x does't support ets tc weight cmd\n",
     hdev->fw_version);
   ret = 0;
  }

  return ret;
 } else {
  ret = hclge_tm_pri_vnet_base_dwrr_cfg(hdev);
  if (ret)
   return ret;
 }

 return 0;
}
