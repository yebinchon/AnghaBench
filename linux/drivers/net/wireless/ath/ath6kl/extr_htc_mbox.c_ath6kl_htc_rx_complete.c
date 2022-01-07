
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htc_packet {int dummy; } ;
struct TYPE_2__ {int (* rx ) (int ,struct htc_packet*) ;} ;
struct htc_endpoint {int target; TYPE_1__ ep_cb; int eid; } ;


 int ATH6KL_DBG_HTC ;
 int ath6kl_dbg (int ,char*,int ,struct htc_packet*) ;
 int stub1 (int ,struct htc_packet*) ;

__attribute__((used)) static void ath6kl_htc_rx_complete(struct htc_endpoint *endpoint,
       struct htc_packet *packet)
{
  ath6kl_dbg(ATH6KL_DBG_HTC,
      "htc rx complete ep %d packet 0x%p\n",
      endpoint->eid, packet);

  endpoint->ep_cb.rx(endpoint->target, packet);
}
