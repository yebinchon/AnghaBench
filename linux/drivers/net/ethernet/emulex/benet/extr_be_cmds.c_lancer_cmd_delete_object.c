
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lancer_cmd_req_delete_object {int object_name; int hdr; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_DELETE_OBJECT ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 struct lancer_cmd_req_delete_object* embedded_payload (struct be_mcc_wrb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlcpy (int ,char const*,int) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

__attribute__((used)) static int lancer_cmd_delete_object(struct be_adapter *adapter,
        const char *obj_name)
{
 struct lancer_cmd_req_delete_object *req;
 struct be_mcc_wrb *wrb;
 int status;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_DELETE_OBJECT,
          sizeof(*req), wrb, ((void*)0));

 strlcpy(req->object_name, obj_name, sizeof(req->object_name));

 status = be_mcc_notify_wait(adapter);
err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
