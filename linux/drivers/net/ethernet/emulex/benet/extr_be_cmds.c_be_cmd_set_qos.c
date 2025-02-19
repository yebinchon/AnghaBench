
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {int domain; } ;
struct be_cmd_req_set_qos {void* max_bps_nic; void* valid_bits; TYPE_1__ hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int BE_QOS_BITS_NIC ;
 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_SET_QOS ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* cpu_to_le32 (int ) ;
 struct be_cmd_req_set_qos* embedded_payload (struct be_mcc_wrb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

__attribute__((used)) static int be_cmd_set_qos(struct be_adapter *adapter, u32 bps, u32 domain)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_set_qos *req;
 int status;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_SET_QOS, sizeof(*req), wrb, ((void*)0));

 req->hdr.domain = domain;
 req->valid_bits = cpu_to_le32(BE_QOS_BITS_NIC);
 req->max_bps_nic = cpu_to_le32(bps);

 status = be_mcc_notify_wait(adapter);

err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
