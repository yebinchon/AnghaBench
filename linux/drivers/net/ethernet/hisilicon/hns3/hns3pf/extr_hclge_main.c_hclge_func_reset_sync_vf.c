
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_pf_rst_sync_cmd {scalar_t__ all_vf_ready; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 int ETIME ;
 int HCLGE_OPC_QUERY_VF_RST_RDY ;
 int HCLGE_PF_RESET_SYNC_CNT ;
 int HCLGE_PF_RESET_SYNC_TIME ;
 int HCLGE_RESET_SYNC_TIME ;
 int dev_err (int *,char*,...) ;
 int hclge_cmd_reuse_desc (struct hclge_desc*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int msleep (int ) ;

__attribute__((used)) static int hclge_func_reset_sync_vf(struct hclge_dev *hdev)
{
 struct hclge_pf_rst_sync_cmd *req;
 struct hclge_desc desc;
 int cnt = 0;
 int ret;

 req = (struct hclge_pf_rst_sync_cmd *)desc.data;
 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_QUERY_VF_RST_RDY, 1);

 do {
  ret = hclge_cmd_send(&hdev->hw, &desc, 1);



  if (ret == -EOPNOTSUPP) {
   msleep(HCLGE_RESET_SYNC_TIME);
   return 0;
  } else if (ret) {
   dev_err(&hdev->pdev->dev, "sync with VF fail %d!\n",
    ret);
   return ret;
  } else if (req->all_vf_ready) {
   return 0;
  }
  msleep(HCLGE_PF_RESET_SYNC_TIME);
  hclge_cmd_reuse_desc(&desc, 1);
 } while (cnt++ < HCLGE_PF_RESET_SYNC_CNT);

 dev_err(&hdev->pdev->dev, "sync with VF timeout!\n");
 return -ETIME;
}
