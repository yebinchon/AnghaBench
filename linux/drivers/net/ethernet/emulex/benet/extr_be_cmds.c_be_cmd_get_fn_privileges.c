
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_get_fn_privileges {int privilege_mask; } ;
struct TYPE_2__ {int domain; } ;
struct be_cmd_req_get_fn_privileges {TYPE_1__ hdr; } ;
struct be_adapter {int mcc_lock; } ;


 scalar_t__ BEx_chip (struct be_adapter*) ;
 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int MAX_PRIVILEGES ;
 int OPCODE_COMMON_GET_FN_PRIVILEGES ;
 scalar_t__ be_is_mc (struct be_adapter*) ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 scalar_t__ be_physfn (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_get_fn_privileges(struct be_adapter *adapter, u32 *privilege,
        u32 domain)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_get_fn_privileges *req;
 int status;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_GET_FN_PRIVILEGES, sizeof(*req),
          wrb, ((void*)0));

 req->hdr.domain = domain;

 status = be_mcc_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_get_fn_privileges *resp =
      embedded_payload(wrb);

  *privilege = le32_to_cpu(resp->privilege_mask);




  if (BEx_chip(adapter) && be_is_mc(adapter) &&
      be_physfn(adapter))
   *privilege = MAX_PRIVILEGES;
 }

err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
