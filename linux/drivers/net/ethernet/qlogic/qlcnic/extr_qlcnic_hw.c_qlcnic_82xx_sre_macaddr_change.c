
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct qlcnic_vlan_req {int vlan_id; } ;
struct qlcnic_nic_req {int * words; void* req_hdr; void* qhdr; } ;
struct qlcnic_mac_req {int mac_addr; int op; } ;
struct qlcnic_adapter {scalar_t__ portnum; } ;
struct cmd_desc_type0 {int dummy; } ;


 int ETH_ALEN ;
 int QLCNIC_MAC_EVENT ;
 int QLCNIC_REQUEST ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le64 (int) ;
 int memcpy (int ,int *,int ) ;
 int memset (struct qlcnic_nic_req*,int ,int) ;
 int qlcnic_send_cmd_descs (struct qlcnic_adapter*,struct cmd_desc_type0*,int) ;

int qlcnic_82xx_sre_macaddr_change(struct qlcnic_adapter *adapter, u8 *addr,
       u16 vlan_id, u8 op)
{
 struct qlcnic_nic_req req;
 struct qlcnic_mac_req *mac_req;
 struct qlcnic_vlan_req *vlan_req;
 u64 word;

 memset(&req, 0, sizeof(struct qlcnic_nic_req));
 req.qhdr = cpu_to_le64(QLCNIC_REQUEST << 23);

 word = QLCNIC_MAC_EVENT | ((u64)adapter->portnum << 16);
 req.req_hdr = cpu_to_le64(word);

 mac_req = (struct qlcnic_mac_req *)&req.words[0];
 mac_req->op = op;
 memcpy(mac_req->mac_addr, addr, ETH_ALEN);

 vlan_req = (struct qlcnic_vlan_req *)&req.words[1];
 vlan_req->vlan_id = cpu_to_le16(vlan_id);

 return qlcnic_send_cmd_descs(adapter, (struct cmd_desc_type0 *)&req, 1);
}
