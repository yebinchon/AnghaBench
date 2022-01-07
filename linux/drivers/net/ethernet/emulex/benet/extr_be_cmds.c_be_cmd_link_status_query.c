
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_link_status {scalar_t__ logical_link_status; int mac_speed; scalar_t__ link_speed; } ;
struct TYPE_2__ {int version; int domain; } ;
struct be_cmd_req_link_status {TYPE_1__ hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int BE2_chip (struct be_adapter*) ;
 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 scalar_t__ LINK_DOWN ;
 int OPCODE_COMMON_NTWK_LINK_STATUS_QUERY ;
 int be_mac_to_link_speed (int ) ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 int le16_to_cpu (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_link_status_query(struct be_adapter *adapter, u16 *link_speed,
        u8 *link_status, u32 dom)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_link_status *req;
 int status;

 mutex_lock(&adapter->mcc_lock);

 if (link_status)
  *link_status = LINK_DOWN;

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_NTWK_LINK_STATUS_QUERY,
          sizeof(*req), wrb, ((void*)0));


 if (!BE2_chip(adapter))
  req->hdr.version = 1;

 req->hdr.domain = dom;

 status = be_mcc_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_link_status *resp = embedded_payload(wrb);

  if (link_speed) {
   *link_speed = resp->link_speed ?
          le16_to_cpu(resp->link_speed) * 10 :
          be_mac_to_link_speed(resp->mac_speed);

   if (!resp->logical_link_status)
    *link_speed = 0;
  }
  if (link_status)
   *link_status = resp->logical_link_status;
 }

err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
