
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_vport {int vport_id; struct hclge_dev* back; } ;
struct hclge_mbx_vf_to_pf_cmd {int dummy; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn (int *,char*,int ) ;
 int hclge_func_reset_cmd (struct hclge_dev*,int ) ;
 int hclge_gen_resp_to_vf (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int,int *,int ) ;

__attribute__((used)) static void hclge_reset_vf(struct hclge_vport *vport,
      struct hclge_mbx_vf_to_pf_cmd *mbx_req)
{
 struct hclge_dev *hdev = vport->back;
 int ret;

 dev_warn(&hdev->pdev->dev, "PF received VF reset request from VF %d!",
   vport->vport_id);

 ret = hclge_func_reset_cmd(hdev, vport->vport_id);
 hclge_gen_resp_to_vf(vport, mbx_req, ret, ((void*)0), 0);
}
