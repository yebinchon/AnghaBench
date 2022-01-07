
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct qlcnic_nic_req {void** words; void* req_hdr; void* qhdr; } ;
struct qlcnic_adapter {TYPE_1__* netdev; scalar_t__ portnum; } ;
struct cmd_desc_type0 {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int QLCNIC_H2C_OPCODE_GET_LINKEVENT ;
 int QLCNIC_HOST_REQUEST ;
 void* cpu_to_le64 (int) ;
 int dev_err (int *,char*) ;
 int memset (struct qlcnic_nic_req*,int ,int) ;
 int qlcnic_send_cmd_descs (struct qlcnic_adapter*,struct cmd_desc_type0*,int) ;

int qlcnic_82xx_linkevent_request(struct qlcnic_adapter *adapter, int enable)
{
 struct qlcnic_nic_req req;
 u64 word;
 int rv;
 memset(&req, 0, sizeof(struct qlcnic_nic_req));
 req.qhdr = cpu_to_le64(QLCNIC_HOST_REQUEST << 23);

 word = QLCNIC_H2C_OPCODE_GET_LINKEVENT | ((u64)adapter->portnum << 16);
 req.req_hdr = cpu_to_le64(word);
 req.words[0] = cpu_to_le64(enable | (enable << 8));
 rv = qlcnic_send_cmd_descs(adapter, (struct cmd_desc_type0 *)&req, 1);
 if (rv != 0)
  dev_err(&adapter->netdev->dev,
    "could not configure link notification\n");

 return rv;
}
