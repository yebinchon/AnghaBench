
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct be_mcc_wrb {int member_0; } ;
struct be_cmd_resp_get_fat {scalar_t__ log_size; } ;
struct be_cmd_req_get_fat {int fat_operation; int hdr; } ;
struct be_adapter {int dummy; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int OPCODE_COMMON_MANAGE_FAT ;
 int QUERY_FAT ;
 int be_cmd_notify_wait (struct be_adapter*,struct be_mcc_wrb*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 int cpu_to_le32 (int ) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;

int be_cmd_get_fat_dump_len(struct be_adapter *adapter, u32 *dump_size)
{
 struct be_mcc_wrb wrb = {0};
 struct be_cmd_req_get_fat *req;
 int status;

 req = embedded_payload(&wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_MANAGE_FAT, sizeof(*req),
          &wrb, ((void*)0));
 req->fat_operation = cpu_to_le32(QUERY_FAT);
 status = be_cmd_notify_wait(adapter, &wrb);
 if (!status) {
  struct be_cmd_resp_get_fat *resp = embedded_payload(&wrb);

  if (dump_size && resp->log_size)
   *dump_size = le32_to_cpu(resp->log_size) -
     sizeof(u32);
 }
 return status;
}
