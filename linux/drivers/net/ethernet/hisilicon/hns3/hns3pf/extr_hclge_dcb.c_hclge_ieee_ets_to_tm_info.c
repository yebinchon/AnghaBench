
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct ieee_ets {int* tc_tsa; int prio_tc; int * tc_tx_bw; } ;
struct TYPE_6__ {TYPE_2__* pg_info; TYPE_1__* tc_info; } ;
struct hclge_dev {TYPE_3__ tm_info; } ;
struct TYPE_5__ {int * tc_dwrr; } ;
struct TYPE_4__ {int tc_sch_mode; } ;


 int EINVAL ;
 int HCLGE_SCH_MODE_DWRR ;
 int HCLGE_SCH_MODE_SP ;
 size_t HNAE3_MAX_TC ;


 int hclge_tm_prio_tc_info_update (struct hclge_dev*,int ) ;

__attribute__((used)) static int hclge_ieee_ets_to_tm_info(struct hclge_dev *hdev,
         struct ieee_ets *ets)
{
 u8 i;

 for (i = 0; i < HNAE3_MAX_TC; i++) {
  switch (ets->tc_tsa[i]) {
  case 128:
   hdev->tm_info.tc_info[i].tc_sch_mode =
    HCLGE_SCH_MODE_SP;
   hdev->tm_info.pg_info[0].tc_dwrr[i] = 0;
   break;
  case 129:
   hdev->tm_info.tc_info[i].tc_sch_mode =
    HCLGE_SCH_MODE_DWRR;
   hdev->tm_info.pg_info[0].tc_dwrr[i] =
    ets->tc_tx_bw[i];
   break;
  default:





   return -EINVAL;
  }
 }

 hclge_tm_prio_tc_info_update(hdev, ets->prio_tc);

 return 0;
}
