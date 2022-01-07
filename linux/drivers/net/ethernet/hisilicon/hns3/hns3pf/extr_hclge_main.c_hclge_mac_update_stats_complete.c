
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
typedef size_t u16 ;
struct TYPE_2__ {int mac_stats; } ;
struct hclge_dev {int hw; TYPE_1__ hw_stats; } ;
struct hclge_desc {int * data; } ;
typedef int __le64 ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int HCLGE_OPC_STATS_MAC_ALL ;
 size_t HCLGE_RD_FIRST_STATS_NUM ;
 size_t HCLGE_RD_OTHER_STATS_NUM ;
 int hclge_cmd_send (int *,struct hclge_desc*,size_t) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 struct hclge_desc* kcalloc (size_t,int,int ) ;
 int kfree (struct hclge_desc*) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static int hclge_mac_update_stats_complete(struct hclge_dev *hdev, u32 desc_num)
{
 u64 *data = (u64 *)(&hdev->hw_stats.mac_stats);
 struct hclge_desc *desc;
 __le64 *desc_data;
 u16 i, k, n;
 int ret;




 desc = kcalloc(desc_num, sizeof(struct hclge_desc), GFP_ATOMIC);
 if (!desc)
  return -ENOMEM;

 hclge_cmd_setup_basic_desc(&desc[0], HCLGE_OPC_STATS_MAC_ALL, 1);
 ret = hclge_cmd_send(&hdev->hw, desc, desc_num);
 if (ret) {
  kfree(desc);
  return ret;
 }

 for (i = 0; i < desc_num; i++) {

  if (i == 0) {
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

 kfree(desc);

 return 0;
}
