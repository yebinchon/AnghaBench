
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hclge_tqp_map_cmd {unsigned int tqp_flag; void* tqp_vid; int tqp_vf; void* tqp_id; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_SET_TQP_MAP ;
 unsigned int HCLGE_TQP_MAP_EN_B ;
 unsigned int HCLGE_TQP_MAP_TYPE_B ;
 void* cpu_to_le16 (int ) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_map_tqps_to_func(struct hclge_dev *hdev, u16 func_id,
      u16 tqp_pid, u16 tqp_vid, bool is_pf)
{
 struct hclge_tqp_map_cmd *req;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_SET_TQP_MAP, 0);

 req = (struct hclge_tqp_map_cmd *)desc.data;
 req->tqp_id = cpu_to_le16(tqp_pid);
 req->tqp_vf = func_id;
 req->tqp_flag = 1U << HCLGE_TQP_MAP_EN_B;
 if (!is_pf)
  req->tqp_flag |= 1U << HCLGE_TQP_MAP_TYPE_B;
 req->tqp_vid = cpu_to_le16(tqp_vid);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev, "TQP map failed %d.\n", ret);

 return ret;
}
