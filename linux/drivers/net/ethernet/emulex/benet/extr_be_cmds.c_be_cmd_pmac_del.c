
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {int domain; } ;
struct be_cmd_req_pmac_del {void* pmac_id; void* if_id; TYPE_1__ hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_NTWK_PMAC_DEL ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* cpu_to_le32 (int) ;
 struct be_cmd_req_pmac_del* embedded_payload (struct be_mcc_wrb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_pmac_del(struct be_adapter *adapter, u32 if_id, int pmac_id, u32 dom)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_pmac_del *req;
 int status;

 if (pmac_id == -1)
  return 0;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_NTWK_PMAC_DEL, sizeof(*req),
          wrb, ((void*)0));

 req->hdr.domain = dom;
 req->if_id = cpu_to_le32(if_id);
 req->pmac_id = cpu_to_le32(pmac_id);

 status = be_mcc_notify_wait(adapter);

err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
