
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int mac_stats; } ;
struct hclge_dev {TYPE_2__* pdev; int hw; TYPE_1__ hw_stats; } ;
struct hclge_desc {int * data; } ;
typedef int __le64 ;
struct TYPE_4__ {int dev; } ;


 int HCLGE_MAC_CMD_NUM ;
 int HCLGE_OPC_STATS_MAC ;
 int HCLGE_RD_FIRST_STATS_NUM ;
 int HCLGE_RD_OTHER_STATS_NUM ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 scalar_t__ le64_to_cpu (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hclge_mac_update_stats_defective(struct hclge_dev *hdev)
{


 u64 *data = (u64 *)(&hdev->hw_stats.mac_stats);
 struct hclge_desc desc[21];
 __le64 *desc_data;
 int i, k, n;
 int ret;

 hclge_cmd_setup_basic_desc(&desc[0], HCLGE_OPC_STATS_MAC, 1);
 ret = hclge_cmd_send(&hdev->hw, desc, 21);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "Get MAC pkt stats fail, status = %d.\n", ret);

  return ret;
 }

 for (i = 0; i < 21; i++) {

  if (unlikely(i == 0)) {
   desc_data = (__le64 *)(&desc[i].data[0]);
   n = HCLGE_RD_FIRST_STATS_NUM;
  } else {
   desc_data = (__le64 *)(&desc[i]);
   n = HCLGE_RD_OTHER_STATS_NUM;
  }

  for (k = 0; k < n; k++) {
   *data += le64_to_cpu(*desc_data);
   data++;
   desc_data++;
  }
 }

 return 0;
}
