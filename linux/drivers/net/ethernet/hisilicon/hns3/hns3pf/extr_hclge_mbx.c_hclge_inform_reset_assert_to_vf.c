
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct hclge_vport {scalar_t__ vport_id; struct hclge_dev* back; } ;
struct hclge_dev {scalar_t__ reset_type; } ;
typedef int msg_data ;
typedef enum hnae3_reset_type { ____Placeholder_hnae3_reset_type } hnae3_reset_type ;


 int HCLGE_MBX_ASSERTING_RESET ;
 scalar_t__ HNAE3_FLR_RESET ;
 scalar_t__ HNAE3_FUNC_RESET ;
 int HNAE3_VF_FULL_RESET ;
 int HNAE3_VF_FUNC_RESET ;
 int HNAE3_VF_PF_FUNC_RESET ;
 int hclge_send_mbx_msg (struct hclge_vport*,scalar_t__*,int,int ,scalar_t__) ;
 int memcpy (scalar_t__*,int*,int) ;

int hclge_inform_reset_assert_to_vf(struct hclge_vport *vport)
{
 struct hclge_dev *hdev = vport->back;
 enum hnae3_reset_type reset_type;
 u8 msg_data[2];
 u8 dest_vfid;

 dest_vfid = (u8)vport->vport_id;

 if (hdev->reset_type == HNAE3_FUNC_RESET)
  reset_type = HNAE3_VF_PF_FUNC_RESET;
 else if (hdev->reset_type == HNAE3_FLR_RESET)
  reset_type = HNAE3_VF_FULL_RESET;
 else
  reset_type = HNAE3_VF_FUNC_RESET;

 memcpy(&msg_data[0], &reset_type, sizeof(u16));


 return hclge_send_mbx_msg(vport, msg_data, sizeof(msg_data),
      HCLGE_MBX_ASSERTING_RESET, dest_vfid);
}
