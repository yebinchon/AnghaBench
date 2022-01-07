
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct htc_target {int conn_rsp_epid; int cmd_wait; struct htc_endpoint* endpoint; } ;
struct htc_frame_hdr {int dummy; } ;
struct htc_endpoint {scalar_t__ service_id; scalar_t__ max_msglen; int dl_pipeid; int ul_pipeid; int ep_callbacks; int max_txqdepth; } ;
struct htc_conn_svc_rspmsg {scalar_t__ status; int endpoint_id; int max_msg_len; int service_id; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int ENDPOINT0 ;
 int ENDPOINT_MAX ;
 int ENDPOINT_UNUSED ;
 scalar_t__ HTC_SERVICE_SUCCESS ;
 scalar_t__ be16_to_cpu (int ) ;
 int complete (int *) ;

__attribute__((used)) static void htc_process_conn_rsp(struct htc_target *target,
     struct htc_frame_hdr *htc_hdr)
{
 struct htc_conn_svc_rspmsg *svc_rspmsg;
 struct htc_endpoint *endpoint, *tmp_endpoint = ((void*)0);
 u16 service_id;
 u16 max_msglen;
 enum htc_endpoint_id epid, tepid;

 svc_rspmsg = (struct htc_conn_svc_rspmsg *)
  ((void *) htc_hdr + sizeof(struct htc_frame_hdr));

 if (svc_rspmsg->status == HTC_SERVICE_SUCCESS) {
  epid = svc_rspmsg->endpoint_id;
  service_id = be16_to_cpu(svc_rspmsg->service_id);
  max_msglen = be16_to_cpu(svc_rspmsg->max_msg_len);
  endpoint = &target->endpoint[epid];

  for (tepid = (ENDPOINT_MAX - 1); tepid > ENDPOINT0; tepid--) {
   tmp_endpoint = &target->endpoint[tepid];
   if (tmp_endpoint->service_id == service_id) {
    tmp_endpoint->service_id = 0;
    break;
   }
  }

  if (tepid == ENDPOINT0)
   return;

  endpoint->service_id = service_id;
  endpoint->max_txqdepth = tmp_endpoint->max_txqdepth;
  endpoint->ep_callbacks = tmp_endpoint->ep_callbacks;
  endpoint->ul_pipeid = tmp_endpoint->ul_pipeid;
  endpoint->dl_pipeid = tmp_endpoint->dl_pipeid;
  endpoint->max_msglen = max_msglen;
  target->conn_rsp_epid = epid;
  complete(&target->cmd_wait);
 } else {
  target->conn_rsp_epid = ENDPOINT_UNUSED;
 }
}
