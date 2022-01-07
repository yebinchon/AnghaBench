
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vtag_array ;
typedef void* u32 ;
typedef int u16 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {void* domain; } ;
struct be_cmd_req_vlan_config {int untagged; int num_vlan; int normal_vlan; void* interface_id; TYPE_1__ hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int BE_IF_FLAGS_UNTAGGED ;
 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_NTWK_VLAN_CONFIG ;
 int be_if_cap_flags (struct be_adapter*) ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 struct be_cmd_req_vlan_config* embedded_payload (struct be_mcc_wrb*) ;
 int memcpy (int ,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_vlan_config(struct be_adapter *adapter, u32 if_id, u16 *vtag_array,
         u32 num, u32 domain)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_vlan_config *req;
 int status;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_NTWK_VLAN_CONFIG, sizeof(*req),
          wrb, ((void*)0));
 req->hdr.domain = domain;

 req->interface_id = if_id;
 req->untagged = BE_IF_FLAGS_UNTAGGED & be_if_cap_flags(adapter) ? 1 : 0;
 req->num_vlan = num;
 memcpy(req->normal_vlan, vtag_array,
        req->num_vlan * sizeof(vtag_array[0]));

 status = be_mcc_notify_wait(adapter);
err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
