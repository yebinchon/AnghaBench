
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct htc_target {struct htc_endpoint* endpoint; } ;
struct htc_endpoint {scalar_t__ svc_id; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int WARN_ON_ONCE (int) ;
 int htc_flush_tx_endpoint (struct htc_target*,struct htc_endpoint*,int ) ;

__attribute__((used)) static void ath6kl_htc_pipe_flush_txep(struct htc_target *target,
           enum htc_endpoint_id endpoint, u16 tag)
{
 struct htc_endpoint *ep = &target->endpoint[endpoint];

 if (ep->svc_id == 0) {
  WARN_ON_ONCE(1);

  return;
 }

 htc_flush_tx_endpoint(target, ep, tag);
}
