
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {int version; } ;
struct be_cmd_req_set_flow_control {void* rx_flow_control; void* tx_flow_control; TYPE_1__ hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ MCC_STATUS_FEATURE_NOT_SUPPORTED ;
 int OPCODE_COMMON_SET_FLOW_CONTROL ;
 scalar_t__ base_status (int) ;
 int be_cmd_allowed (struct be_adapter*,int ,int ) ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* cpu_to_le16 (int ) ;
 struct be_cmd_req_set_flow_control* embedded_payload (struct be_mcc_wrb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_set_flow_control(struct be_adapter *adapter, u32 tx_fc, u32 rx_fc)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_set_flow_control *req;
 int status;

 if (!be_cmd_allowed(adapter, OPCODE_COMMON_SET_FLOW_CONTROL,
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
          OPCODE_COMMON_SET_FLOW_CONTROL, sizeof(*req),
          wrb, ((void*)0));

 req->hdr.version = 1;
 req->tx_flow_control = cpu_to_le16((u16)tx_fc);
 req->rx_flow_control = cpu_to_le16((u16)rx_fc);

 status = be_mcc_notify_wait(adapter);

err:
 mutex_unlock(&adapter->mcc_lock);

 if (base_status(status) == MCC_STATUS_FEATURE_NOT_SUPPORTED)
  return -EOPNOTSUPP;

 return status;
}
