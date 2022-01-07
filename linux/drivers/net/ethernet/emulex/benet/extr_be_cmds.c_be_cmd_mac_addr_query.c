
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {int addr; } ;
struct be_cmd_resp_mac_query {TYPE_1__ mac; } ;
struct be_cmd_req_mac_query {int permanent; int pmac_id; int if_id; int type; int hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int ETH_ALEN ;
 int MAC_ADDRESS_TYPE_NETWORK ;
 int OPCODE_COMMON_NTWK_MAC_QUERY ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (scalar_t__) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 int memcpy (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_mac_addr_query(struct be_adapter *adapter, u8 *mac_addr,
     bool permanent, u32 if_handle, u32 pmac_id)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_mac_query *req;
 int status;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_NTWK_MAC_QUERY, sizeof(*req), wrb,
          ((void*)0));
 req->type = MAC_ADDRESS_TYPE_NETWORK;
 if (permanent) {
  req->permanent = 1;
 } else {
  req->if_id = cpu_to_le16((u16)if_handle);
  req->pmac_id = cpu_to_le32(pmac_id);
  req->permanent = 0;
 }

 status = be_mcc_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_mac_query *resp = embedded_payload(wrb);

  memcpy(mac_addr, resp->mac.addr, ETH_ALEN);
 }

err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
