
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u16 ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mbx_pf_to_vf_cmd {void** msg; void* msg_len; int dest_vfid; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
typedef enum hclge_cmd_status { ____Placeholder_hclge_cmd_status } hclge_cmd_status ;
struct TYPE_2__ {int dev; } ;


 int HCLGEVF_OPC_MBX_PF_TO_VF ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int memcpy (void**,int *,void*) ;

__attribute__((used)) static int hclge_send_mbx_msg(struct hclge_vport *vport, u8 *msg, u16 msg_len,
         u16 mbx_opcode, u8 dest_vfid)
{
 struct hclge_mbx_pf_to_vf_cmd *resp_pf_to_vf;
 struct hclge_dev *hdev = vport->back;
 enum hclge_cmd_status status;
 struct hclge_desc desc;

 resp_pf_to_vf = (struct hclge_mbx_pf_to_vf_cmd *)desc.data;

 hclge_cmd_setup_basic_desc(&desc, HCLGEVF_OPC_MBX_PF_TO_VF, 0);

 resp_pf_to_vf->dest_vfid = dest_vfid;
 resp_pf_to_vf->msg_len = msg_len;
 resp_pf_to_vf->msg[0] = mbx_opcode;

 memcpy(&resp_pf_to_vf->msg[1], msg, msg_len);

 status = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (status)
  dev_err(&hdev->pdev->dev,
   "PF failed(=%d) to send mailbox message to VF\n",
   status);

 return status;
}
