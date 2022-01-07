
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct ieee_ets {scalar_t__* prio_tc; int* tc_tsa; int * tc_tx_bw; } ;
struct TYPE_4__ {scalar_t__* prio_tc; size_t num_tc; TYPE_1__* tc_info; } ;
struct hclge_dev {TYPE_2__ tm_info; } ;
struct TYPE_3__ {int tc_sch_mode; } ;


 scalar_t__ BW_PERCENT ;
 int EINVAL ;
 int HCLGE_SCH_MODE_DWRR ;
 int HCLGE_SCH_MODE_SP ;
 size_t HNAE3_MAX_TC ;
 size_t HNAE3_MAX_USER_PRIO ;


 int hclge_dcb_common_validate (struct hclge_dev*,size_t,size_t*) ;

__attribute__((used)) static int hclge_ets_validate(struct hclge_dev *hdev, struct ieee_ets *ets,
         u8 *tc, bool *changed)
{
 bool has_ets_tc = 0;
 u32 total_ets_bw = 0;
 u8 max_tc = 0;
 int ret;
 u8 i;

 for (i = 0; i < HNAE3_MAX_USER_PRIO; i++) {
  if (ets->prio_tc[i] != hdev->tm_info.prio_tc[i])
   *changed = 1;

  if (ets->prio_tc[i] > max_tc)
   max_tc = ets->prio_tc[i];
 }

 ret = hclge_dcb_common_validate(hdev, max_tc + 1, ets->prio_tc);
 if (ret)
  return ret;

 for (i = 0; i < HNAE3_MAX_TC; i++) {
  switch (ets->tc_tsa[i]) {
  case 128:
   if (hdev->tm_info.tc_info[i].tc_sch_mode !=
    HCLGE_SCH_MODE_SP)
    *changed = 1;
   break;
  case 129:
   if (hdev->tm_info.tc_info[i].tc_sch_mode !=
    HCLGE_SCH_MODE_DWRR)
    *changed = 1;

   total_ets_bw += ets->tc_tx_bw[i];
   has_ets_tc = 1;
   break;
  default:
   return -EINVAL;
  }
 }

 if (has_ets_tc && total_ets_bw != BW_PERCENT)
  return -EINVAL;

 *tc = max_tc + 1;
 if (*tc != hdev->tm_info.num_tc)
  *changed = 1;

 return 0;
}
