
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hclge_vport {int dummy; } ;
typedef int msg_data ;


 int HCLGE_MBX_PUSH_VLAN_INFO ;
 int MSG_DATA_SIZE ;
 int hclge_send_mbx_msg (struct hclge_vport*,int *,int,int ,int ) ;
 int memcpy (int *,int *,int) ;

int hclge_push_vf_port_base_vlan_info(struct hclge_vport *vport, u8 vfid,
          u16 state, u16 vlan_tag, u16 qos,
          u16 vlan_proto)
{


 u8 msg_data[8];

 memcpy(&msg_data[0], &state, sizeof(u16));
 memcpy(&msg_data[2], &vlan_proto, sizeof(u16));
 memcpy(&msg_data[4], &qos, sizeof(u16));
 memcpy(&msg_data[6], &vlan_tag, sizeof(u16));

 return hclge_send_mbx_msg(vport, msg_data, sizeof(msg_data),
      HCLGE_MBX_PUSH_VLAN_INFO, vfid);
}
