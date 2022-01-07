
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_6__ {size_t num_tc; size_t* prio_tc; scalar_t__ pfc_en; TYPE_2__* pg_info; TYPE_1__* tc_info; } ;
struct hclge_dev {int flag; TYPE_3__ tm_info; } ;
struct TYPE_5__ {int bw_limit; } ;
struct TYPE_4__ {size_t tc_id; int bw_limit; scalar_t__ pgid; int tc_sch_mode; } ;


 int HCLGE_FLAG_DCB_ENABLE ;
 int HCLGE_SCH_MODE_DWRR ;
 size_t HNAE3_MAX_USER_PRIO ;

__attribute__((used)) static void hclge_tm_tc_info_init(struct hclge_dev *hdev)
{
 u8 i;

 for (i = 0; i < hdev->tm_info.num_tc; i++) {
  hdev->tm_info.tc_info[i].tc_id = i;
  hdev->tm_info.tc_info[i].tc_sch_mode = HCLGE_SCH_MODE_DWRR;
  hdev->tm_info.tc_info[i].pgid = 0;
  hdev->tm_info.tc_info[i].bw_limit =
   hdev->tm_info.pg_info[0].bw_limit;
 }

 for (i = 0; i < HNAE3_MAX_USER_PRIO; i++)
  hdev->tm_info.prio_tc[i] =
   (i >= hdev->tm_info.num_tc) ? 0 : i;




 if (hdev->tm_info.num_tc > 1 || hdev->tm_info.pfc_en)
  hdev->flag |= HCLGE_FLAG_DCB_ENABLE;
 else
  hdev->flag &= ~HCLGE_FLAG_DCB_ENABLE;
}
