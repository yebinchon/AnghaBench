
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct hclgevf_rss_tc_mode_cmd {int * rss_tc_mode; } ;
struct hclgevf_dev {int hw_tc_map; TYPE_1__* pdev; int hw; } ;
struct hclgevf_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (unsigned int) ;
 int HCLGEVF_MAX_TC_NUM ;
 int HCLGEVF_OPC_RSS_TC_MODE ;
 int HCLGEVF_RSS_TC_OFFSET_M ;
 int HCLGEVF_RSS_TC_OFFSET_S ;
 int HCLGEVF_RSS_TC_SIZE_M ;
 int HCLGEVF_RSS_TC_SIZE_S ;
 int HCLGEVF_RSS_TC_VALID_B ;
 int dev_err (int *,char*,int) ;
 int hclgevf_cmd_send (int *,struct hclgevf_desc*,int) ;
 int hclgevf_cmd_setup_basic_desc (struct hclgevf_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,unsigned int) ;
 int hnae3_set_field (int ,int ,int ,unsigned int) ;
 unsigned int ilog2 (unsigned int) ;
 unsigned int roundup_pow_of_two (unsigned int) ;

__attribute__((used)) static int hclgevf_set_rss_tc_mode(struct hclgevf_dev *hdev, u16 rss_size)
{
 struct hclgevf_rss_tc_mode_cmd *req;
 u16 tc_offset[HCLGEVF_MAX_TC_NUM];
 u16 tc_valid[HCLGEVF_MAX_TC_NUM];
 u16 tc_size[HCLGEVF_MAX_TC_NUM];
 struct hclgevf_desc desc;
 u16 roundup_size;
 int status;
 unsigned int i;

 req = (struct hclgevf_rss_tc_mode_cmd *)desc.data;

 roundup_size = roundup_pow_of_two(rss_size);
 roundup_size = ilog2(roundup_size);

 for (i = 0; i < HCLGEVF_MAX_TC_NUM; i++) {
  tc_valid[i] = !!(hdev->hw_tc_map & BIT(i));
  tc_size[i] = roundup_size;
  tc_offset[i] = rss_size * i;
 }

 hclgevf_cmd_setup_basic_desc(&desc, HCLGEVF_OPC_RSS_TC_MODE, 0);
 for (i = 0; i < HCLGEVF_MAX_TC_NUM; i++) {
  hnae3_set_bit(req->rss_tc_mode[i], HCLGEVF_RSS_TC_VALID_B,
         (tc_valid[i] & 0x1));
  hnae3_set_field(req->rss_tc_mode[i], HCLGEVF_RSS_TC_SIZE_M,
    HCLGEVF_RSS_TC_SIZE_S, tc_size[i]);
  hnae3_set_field(req->rss_tc_mode[i], HCLGEVF_RSS_TC_OFFSET_M,
    HCLGEVF_RSS_TC_OFFSET_S, tc_offset[i]);
 }
 status = hclgevf_cmd_send(&hdev->hw, &desc, 1);
 if (status)
  dev_err(&hdev->pdev->dev,
   "VF failed(=%d) to set rss tc mode\n", status);

 return status;
}
