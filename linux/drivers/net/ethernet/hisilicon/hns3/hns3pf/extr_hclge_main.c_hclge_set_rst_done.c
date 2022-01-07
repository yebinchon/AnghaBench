
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_pf_rst_done_cmd {int pf_rst_done; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 int HCLGE_OPC_PF_RST_DONE ;
 int HCLGE_PF_RESET_DONE_BIT ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int ) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_set_rst_done(struct hclge_dev *hdev)
{
 struct hclge_pf_rst_done_cmd *req;
 struct hclge_desc desc;
 int ret;

 req = (struct hclge_pf_rst_done_cmd *)desc.data;
 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_PF_RST_DONE, 0);
 req->pf_rst_done |= HCLGE_PF_RESET_DONE_BIT;

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);




 if (ret == -EOPNOTSUPP) {
  dev_warn(&hdev->pdev->dev,
    "current firmware does not support command(0x%x)!\n",
    HCLGE_OPC_PF_RST_DONE);
  return 0;
 } else if (ret) {
  dev_err(&hdev->pdev->dev, "assert PF reset done fail %d!\n",
   ret);
 }

 return ret;
}
