
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_pg; int fc_mode; } ;
struct hclge_dev {scalar_t__ tx_sch_mode; TYPE_1__ tm_info; int fc_mode_last_time; } ;


 int EINVAL ;
 int HCLGE_FC_FULL ;
 scalar_t__ HCLGE_FLAG_TC_BASE_SCH_MODE ;
 int hclge_tm_init_hw (struct hclge_dev*,int) ;
 int hclge_tm_schd_info_init (struct hclge_dev*) ;

int hclge_tm_schd_init(struct hclge_dev *hdev)
{

 hdev->tm_info.fc_mode = HCLGE_FC_FULL;
 hdev->fc_mode_last_time = hdev->tm_info.fc_mode;

 if (hdev->tx_sch_mode != HCLGE_FLAG_TC_BASE_SCH_MODE &&
     hdev->tm_info.num_pg != 1)
  return -EINVAL;

 hclge_tm_schd_info_init(hdev);

 return hclge_tm_init_hw(hdev, 1);
}
