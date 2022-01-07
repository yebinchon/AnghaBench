
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_get_flow_control {int rx_flow_control; int tx_flow_control; } ;
struct be_cmd_req_get_flow_control {int hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int EPERM ;
 int OPCODE_COMMON_GET_FLOW_CONTROL ;
 int be_cmd_allowed (struct be_adapter*,int ,int ) ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_get_flow_control(struct be_adapter *adapter, u32 *tx_fc, u32 *rx_fc)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_get_flow_control *req;
 int status;

 if (!be_cmd_allowed(adapter, OPCODE_COMMON_GET_FLOW_CONTROL,
       CMD_SUBSYSTEM_COMMON))
  return -EPERM;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_GET_FLOW_CONTROL, sizeof(*req),
          wrb, ((void*)0));

 status = be_mcc_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_get_flow_control *resp =
      embedded_payload(wrb);

  *tx_fc = le16_to_cpu(resp->tx_flow_control);
  *rx_fc = le16_to_cpu(resp->rx_flow_control);
 }

err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
