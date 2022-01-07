
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct be_mcc_wrb {int member_0; } ;
struct TYPE_2__ {int domain; } ;
struct be_cmd_req_if_destroy {int interface_id; TYPE_1__ hdr; } ;
struct be_adapter {int dummy; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int OPCODE_COMMON_NTWK_INTERFACE_DESTROY ;
 int be_cmd_notify_wait (struct be_adapter*,struct be_mcc_wrb*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 int cpu_to_le32 (int) ;
 struct be_cmd_req_if_destroy* embedded_payload (struct be_mcc_wrb*) ;

int be_cmd_if_destroy(struct be_adapter *adapter, int interface_id, u32 domain)
{
 struct be_mcc_wrb wrb = {0};
 struct be_cmd_req_if_destroy *req;
 int status;

 if (interface_id == -1)
  return 0;

 req = embedded_payload(&wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_NTWK_INTERFACE_DESTROY,
          sizeof(*req), &wrb, ((void*)0));
 req->hdr.domain = domain;
 req->interface_id = cpu_to_le32(interface_id);

 status = be_cmd_notify_wait(adapter, &wrb);
 return status;
}
