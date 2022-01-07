
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct htc_target {TYPE_2__* dev; struct htc_endpoint* endpoint; } ;
struct htc_packet {size_t endpoint; int list; scalar_t__ status; } ;
struct htc_endpoint {int dummy; } ;
struct hif_scatter_req {int scat_entries; scalar_t__ status; TYPE_1__* scat_list; int len; } ;
struct TYPE_4__ {int ar; } ;
struct TYPE_3__ {struct htc_packet* packet; } ;


 int ATH6KL_DBG_HTC ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int WARN_ON (int) ;
 int ath6kl_dbg (int ,char*,int ,int) ;
 int ath6kl_err (char*,scalar_t__) ;
 int hif_scatter_req_add (int ,struct hif_scatter_req*) ;
 int htc_tx_comp_update (struct htc_target*,struct htc_endpoint*,struct htc_packet*) ;
 int htc_tx_complete (struct htc_endpoint*,struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static void htc_async_tx_scat_complete(struct htc_target *target,
           struct hif_scatter_req *scat_req)
{
 struct htc_endpoint *endpoint;
 struct htc_packet *packet;
 struct list_head tx_compq;
 int i;

 INIT_LIST_HEAD(&tx_compq);

 ath6kl_dbg(ATH6KL_DBG_HTC,
     "htc tx scat complete len %d entries %d\n",
     scat_req->len, scat_req->scat_entries);

 if (scat_req->status)
  ath6kl_err("send scatter req failed: %d\n", scat_req->status);

 packet = scat_req->scat_list[0].packet;
 endpoint = &target->endpoint[packet->endpoint];


 for (i = 0; i < scat_req->scat_entries; i++) {
  packet = scat_req->scat_list[i].packet;
  if (!packet) {
   WARN_ON(1);
   return;
  }

  packet->status = scat_req->status;
  htc_tx_comp_update(target, endpoint, packet);
  list_add_tail(&packet->list, &tx_compq);
 }


 hif_scatter_req_add(target->dev->ar, scat_req);


 htc_tx_complete(endpoint, &tx_compq);
}
