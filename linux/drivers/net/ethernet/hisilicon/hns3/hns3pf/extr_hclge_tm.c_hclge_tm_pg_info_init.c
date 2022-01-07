
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_4__ {size_t num_pg; int num_tc; TYPE_1__* pg_info; void** pg_dwrr; } ;
struct hclge_dev {TYPE_2__ tm_info; int hw_tc_map; } ;
struct TYPE_3__ {size_t pg_id; void** tc_dwrr; int tc_bit_map; int bw_limit; int pg_sch_mode; } ;


 void* BW_PERCENT ;
 int HCLGE_ETHER_MAX_RATE ;
 int HCLGE_SCH_MODE_DWRR ;

__attribute__((used)) static void hclge_tm_pg_info_init(struct hclge_dev *hdev)
{


 u8 i;

 for (i = 0; i < hdev->tm_info.num_pg; i++) {
  int k;

  hdev->tm_info.pg_dwrr[i] = i ? 0 : 100;

  hdev->tm_info.pg_info[i].pg_id = i;
  hdev->tm_info.pg_info[i].pg_sch_mode = HCLGE_SCH_MODE_DWRR;

  hdev->tm_info.pg_info[i].bw_limit = HCLGE_ETHER_MAX_RATE;

  if (i != 0)
   continue;

  hdev->tm_info.pg_info[i].tc_bit_map = hdev->hw_tc_map;
  for (k = 0; k < hdev->tm_info.num_tc; k++)
   hdev->tm_info.pg_info[i].tc_dwrr[k] = 100;
 }
}
