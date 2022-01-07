
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_manage_iface_filters {int target_iface_id; int op; int hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_MANAGE_IFACE_FILTERS ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 int cpu_to_le32 (int) ;
 struct be_cmd_req_manage_iface_filters* embedded_payload (struct be_mcc_wrb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_manage_iface(struct be_adapter *adapter, u32 iface, u8 op)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_manage_iface_filters *req;
 int status;

 if (iface == 0xFFFFFFFF)
  return -1;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_MANAGE_IFACE_FILTERS, sizeof(*req),
          wrb, ((void*)0));
 req->op = op;
 req->target_iface_id = cpu_to_le32(iface);

 status = be_mcc_notify_wait(adapter);
err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
