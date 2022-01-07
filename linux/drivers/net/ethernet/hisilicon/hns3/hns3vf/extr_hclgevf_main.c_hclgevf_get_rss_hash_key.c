
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hclgevf_rss_cfg {int * rss_hash_key; } ;
struct hclgevf_dev {TYPE_1__* pdev; struct hclgevf_rss_cfg rss_cfg; } ;
typedef int index ;
struct TYPE_2__ {int dev; } ;


 int HCLGEVF_RSS_KEY_SIZE ;
 int HCLGEVF_RSS_MBX_RESP_LEN ;
 int HCLGE_MBX_GET_RSS_KEY ;
 int dev_err (int *,char*,int) ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,int*,int,int,int*,int) ;
 int memcpy (int *,int*,int) ;

__attribute__((used)) static int hclgevf_get_rss_hash_key(struct hclgevf_dev *hdev)
{


 struct hclgevf_rss_cfg *rss_cfg = &hdev->rss_cfg;
 u8 resp_msg[8];
 u16 msg_num, hash_key_index;
 u8 index;
 int ret;

 msg_num = (HCLGEVF_RSS_KEY_SIZE + 8 - 1) /
   8;
 for (index = 0; index < msg_num; index++) {
  ret = hclgevf_send_mbx_msg(hdev, HCLGE_MBX_GET_RSS_KEY, 0,
        &index, sizeof(index),
        1, resp_msg,
        8);
  if (ret) {
   dev_err(&hdev->pdev->dev,
    "VF get rss hash key from PF failed, ret=%d",
    ret);
   return ret;
  }

  hash_key_index = 8 * index;
  if (index == msg_num - 1)
   memcpy(&rss_cfg->rss_hash_key[hash_key_index],
          &resp_msg[0],
          HCLGEVF_RSS_KEY_SIZE - hash_key_index);
  else
   memcpy(&rss_cfg->rss_hash_key[hash_key_index],
          &resp_msg[0], 8);
 }

 return 0;
}
