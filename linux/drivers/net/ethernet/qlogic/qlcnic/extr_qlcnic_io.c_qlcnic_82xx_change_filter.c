
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct qlcnic_vlan_req {int vlan_id; } ;
struct qlcnic_nic_req {int * words; void* req_hdr; void* qhdr; } ;
struct qlcnic_mac_req {int mac_addr; int op; } ;
struct qlcnic_host_tx_ring {size_t producer; int num_desc; struct cmd_desc_type0* desc_head; } ;
struct qlcnic_adapter {scalar_t__ portnum; } ;
struct cmd_desc_type0 {int dummy; } ;


 int ETH_ALEN ;
 int QLCNIC_MAC_ADD ;
 int QLCNIC_MAC_EVENT ;
 int QLCNIC_MAC_VLAN_ADD ;
 int QLCNIC_REQUEST ;
 int cpu_to_le16 (scalar_t__) ;
 void* cpu_to_le64 (int) ;
 size_t get_next_index (size_t,int ) ;
 int memcpy (int ,int*,int ) ;
 int memset (struct qlcnic_nic_req*,int ,int) ;
 int smp_mb () ;

void qlcnic_82xx_change_filter(struct qlcnic_adapter *adapter, u64 *uaddr,
          u16 vlan_id, struct qlcnic_host_tx_ring *tx_ring)
{
 struct cmd_desc_type0 *hwdesc;
 struct qlcnic_nic_req *req;
 struct qlcnic_mac_req *mac_req;
 struct qlcnic_vlan_req *vlan_req;
 u32 producer;
 u64 word;

 producer = tx_ring->producer;
 hwdesc = &tx_ring->desc_head[tx_ring->producer];

 req = (struct qlcnic_nic_req *)hwdesc;
 memset(req, 0, sizeof(struct qlcnic_nic_req));
 req->qhdr = cpu_to_le64(QLCNIC_REQUEST << 23);

 word = QLCNIC_MAC_EVENT | ((u64)(adapter->portnum) << 16);
 req->req_hdr = cpu_to_le64(word);

 mac_req = (struct qlcnic_mac_req *)&(req->words[0]);
 mac_req->op = vlan_id ? QLCNIC_MAC_VLAN_ADD : QLCNIC_MAC_ADD;
 memcpy(mac_req->mac_addr, uaddr, ETH_ALEN);

 vlan_req = (struct qlcnic_vlan_req *)&req->words[1];
 vlan_req->vlan_id = cpu_to_le16(vlan_id);

 tx_ring->producer = get_next_index(producer, tx_ring->num_desc);
 smp_mb();
}
