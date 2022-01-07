
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mac_type; int speed; int duplex; int link_up; int msg; } ;
union nic_mbx {TYPE_1__ link_status; } ;
typedef size_t u8 ;
struct nicpf {int node; int * vf_lmac_map; } ;
struct bgx_link_status {int mac_type; int speed; int duplex; int link_up; } ;


 size_t NIC_GET_BGX_FROM_VF_LMAC_MAP (int ) ;
 size_t NIC_GET_LMAC_FROM_VF_LMAC_MAP (int ) ;
 int NIC_MBOX_MSG_BGX_LINK_CHANGE ;
 int bgx_get_lmac_link_state (int ,size_t,size_t,struct bgx_link_status*) ;
 int nic_send_msg_to_vf (struct nicpf*,size_t,union nic_mbx*) ;

__attribute__((used)) static void nic_link_status_get(struct nicpf *nic, u8 vf)
{
 union nic_mbx mbx = {};
 struct bgx_link_status link;
 u8 bgx, lmac;

 mbx.link_status.msg = NIC_MBOX_MSG_BGX_LINK_CHANGE;


 bgx = NIC_GET_BGX_FROM_VF_LMAC_MAP(nic->vf_lmac_map[vf]);
 lmac = NIC_GET_LMAC_FROM_VF_LMAC_MAP(nic->vf_lmac_map[vf]);


 bgx_get_lmac_link_state(nic->node, bgx, lmac, &link);


 mbx.link_status.link_up = link.link_up;
 mbx.link_status.duplex = link.duplex;
 mbx.link_status.speed = link.speed;
 mbx.link_status.mac_type = link.mac_type;


 nic_send_msg_to_vf(nic, vf, &mbx);
}
