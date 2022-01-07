
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mbx_vf_to_pf_cmd {int mbx_src_vfid; } ;
struct TYPE_3__ {scalar_t__ speed; scalar_t__ duplex; int link; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;
typedef int msg_data ;


 int HCLGE_MBX_LINK_STAT_CHANGE ;
 int hclge_send_mbx_msg (struct hclge_vport*,int *,int,int ,int ) ;
 int memcpy (int *,scalar_t__*,int) ;

__attribute__((used)) static int hclge_get_link_info(struct hclge_vport *vport,
          struct hclge_mbx_vf_to_pf_cmd *mbx_req)
{
 struct hclge_dev *hdev = vport->back;
 u16 link_status;
 u8 msg_data[8];
 u8 dest_vfid;
 u16 duplex;


 link_status = (u16)hdev->hw.mac.link;
 duplex = hdev->hw.mac.duplex;
 memcpy(&msg_data[0], &link_status, sizeof(u16));
 memcpy(&msg_data[2], &hdev->hw.mac.speed, sizeof(u32));
 memcpy(&msg_data[6], &duplex, sizeof(u16));
 dest_vfid = mbx_req->mbx_src_vfid;


 return hclge_send_mbx_msg(vport, msg_data, sizeof(msg_data),
      HCLGE_MBX_LINK_STAT_CHANGE, dest_vfid);
}
