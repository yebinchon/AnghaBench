
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct be_vf_cfg {int if_handle; } ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_3__ {int if_id; } ;
struct be_cmd_resp_get_iface_list {TYPE_1__ if_desc; } ;
struct TYPE_4__ {int domain; } ;
struct be_cmd_req_get_iface_list {TYPE_2__ hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_GET_IFACE_LIST ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_2__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 struct be_cmd_req_get_iface_list* embedded_payload (struct be_mcc_wrb*) ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_get_if_id(struct be_adapter *adapter, struct be_vf_cfg *vf_cfg,
       int vf_num)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_get_iface_list *req;
 struct be_cmd_resp_get_iface_list *resp;
 int status;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_GET_IFACE_LIST, sizeof(*resp),
          wrb, ((void*)0));
 req->hdr.domain = vf_num + 1;

 status = be_mcc_notify_wait(adapter);
 if (!status) {
  resp = (struct be_cmd_resp_get_iface_list *)req;
  vf_cfg->if_handle = le32_to_cpu(resp->if_desc.if_id);
 }

err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
