
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct qlcnic_nic_req {void** words; void* req_hdr; void* qhdr; } ;
struct qlcnic_adapter {scalar_t__ portnum; } ;
struct cmd_desc_type0 {int dummy; } ;


 int QLCNIC_H2C_OPCODE_SET_MAC_RECEIVE_MODE ;
 int QLCNIC_HOST_REQUEST ;
 void* cpu_to_le64 (int) ;
 int memset (struct qlcnic_nic_req*,int ,int) ;
 int qlcnic_send_cmd_descs (struct qlcnic_adapter*,struct cmd_desc_type0*,int) ;

int qlcnic_82xx_nic_set_promisc(struct qlcnic_adapter *adapter, u32 mode)
{
 struct qlcnic_nic_req req;
 u64 word;

 memset(&req, 0, sizeof(struct qlcnic_nic_req));

 req.qhdr = cpu_to_le64(QLCNIC_HOST_REQUEST << 23);

 word = QLCNIC_H2C_OPCODE_SET_MAC_RECEIVE_MODE |
   ((u64)adapter->portnum << 16);
 req.req_hdr = cpu_to_le64(word);

 req.words[0] = cpu_to_le64(mode);

 return qlcnic_send_cmd_descs(adapter,
    (struct cmd_desc_type0 *)&req, 1);
}
