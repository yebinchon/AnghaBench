
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct netxen_adapter {scalar_t__ portnum; } ;
struct cmd_desc_type0 {int dummy; } ;
struct TYPE_3__ {void** words; void* req_hdr; void* qhdr; } ;
typedef TYPE_1__ nx_nic_req_t ;


 int NX_HOST_REQUEST ;
 int NX_NIC_H2C_OPCODE_PROXY_SET_VPORT_MISS_MODE ;
 void* cpu_to_le64 (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int netxen_send_cmd_descs (struct netxen_adapter*,struct cmd_desc_type0*,int) ;

__attribute__((used)) static int netxen_p3_nic_set_promisc(struct netxen_adapter *adapter, u32 mode)
{
 nx_nic_req_t req;
 u64 word;

 memset(&req, 0, sizeof(nx_nic_req_t));

 req.qhdr = cpu_to_le64(NX_HOST_REQUEST << 23);

 word = NX_NIC_H2C_OPCODE_PROXY_SET_VPORT_MISS_MODE |
   ((u64)adapter->portnum << 16);
 req.req_hdr = cpu_to_le64(word);

 req.words[0] = cpu_to_le64(mode);

 return netxen_send_cmd_descs(adapter,
    (struct cmd_desc_type0 *)&req, 1);
}
