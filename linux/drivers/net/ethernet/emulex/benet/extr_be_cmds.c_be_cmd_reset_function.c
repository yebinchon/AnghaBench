
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_hdr {int dummy; } ;
struct be_adapter {int mbox_lock; TYPE_1__* pdev; scalar_t__ db; } ;
struct TYPE_2__ {int dev; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int OPCODE_COMMON_FUNCTION_RESET ;
 scalar_t__ SLIPORT_CONTROL_OFFSET ;
 int SLI_PORT_CONTROL_IP_MASK ;
 int be_mbox_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (struct be_cmd_req_hdr*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 int dev_err (int *,char*) ;
 struct be_cmd_req_hdr* embedded_payload (struct be_mcc_wrb*) ;
 int iowrite32 (int ,scalar_t__) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;
 int lancer_wait_ready (struct be_adapter*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (struct be_adapter*) ;

int be_cmd_reset_function(struct be_adapter *adapter)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_hdr *req;
 int status;

 if (lancer_chip(adapter)) {
  iowrite32(SLI_PORT_CONTROL_IP_MASK,
     adapter->db + SLIPORT_CONTROL_OFFSET);
  status = lancer_wait_ready(adapter);
  if (status)
   dev_err(&adapter->pdev->dev,
    "Adapter in non recoverable error\n");
  return status;
 }

 if (mutex_lock_interruptible(&adapter->mbox_lock))
  return -1;

 wrb = wrb_from_mbox(adapter);
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(req, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_FUNCTION_RESET, sizeof(*req), wrb,
          ((void*)0));

 status = be_mbox_notify_wait(adapter);

 mutex_unlock(&adapter->mbox_lock);
 return status;
}
