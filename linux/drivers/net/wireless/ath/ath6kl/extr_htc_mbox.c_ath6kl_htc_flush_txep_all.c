
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_target {struct htc_endpoint* endpoint; } ;
struct htc_endpoint {scalar_t__ svc_id; } ;


 int ENDPOINT_0 ;
 int ENDPOINT_MAX ;
 int HTC_TX_PACKET_TAG_ALL ;
 int ath6kl_htc_mbox_flush_txep (struct htc_target*,int,int ) ;
 int dump_cred_dist_stats (struct htc_target*) ;

__attribute__((used)) static void ath6kl_htc_flush_txep_all(struct htc_target *target)
{
 struct htc_endpoint *endpoint;
 int i;

 dump_cred_dist_stats(target);

 for (i = ENDPOINT_0; i < ENDPOINT_MAX; i++) {
  endpoint = &target->endpoint[i];
  if (endpoint->svc_id == 0)

   continue;
  ath6kl_htc_mbox_flush_txep(target, i, HTC_TX_PACKET_TAG_ALL);
 }
}
