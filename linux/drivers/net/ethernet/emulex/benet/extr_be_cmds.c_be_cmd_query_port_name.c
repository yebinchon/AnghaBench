
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_get_port_name {size_t* port_name; } ;
struct TYPE_2__ {int version; } ;
struct be_cmd_req_get_port_name {TYPE_1__ hdr; } ;
struct be_adapter {size_t port_name; size_t hba_port_num; int mbox_lock; } ;


 int BEx_chip (struct be_adapter*) ;
 int CMD_SUBSYSTEM_COMMON ;
 int OPCODE_COMMON_GET_PORT_NAME ;
 int be_mbox_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (struct be_adapter*) ;

int be_cmd_query_port_name(struct be_adapter *adapter)
{
 struct be_cmd_req_get_port_name *req;
 struct be_mcc_wrb *wrb;
 int status;

 if (mutex_lock_interruptible(&adapter->mbox_lock))
  return -1;

 wrb = wrb_from_mbox(adapter);
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_GET_PORT_NAME, sizeof(*req), wrb,
          ((void*)0));
 if (!BEx_chip(adapter))
  req->hdr.version = 1;

 status = be_mbox_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_get_port_name *resp = embedded_payload(wrb);

  adapter->port_name = resp->port_name[adapter->hba_port_num];
 } else {
  adapter->port_name = adapter->hba_port_num + '0';
 }

 mutex_unlock(&adapter->mbox_lock);
 return status;
}
