
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct htc_target {struct htc_endpoint* endpoint; } ;
struct TYPE_3__ {int seqno; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct htc_packet {size_t endpoint; int list; TYPE_2__ info; } ;
struct htc_endpoint {int dummy; } ;


 int ATH6KL_DBG_HTC ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int ath6kl_dbg (int ,char*,int ) ;
 int htc_tx_comp_update (struct htc_target*,struct htc_endpoint*,struct htc_packet*) ;
 int htc_tx_complete (struct htc_endpoint*,struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static void htc_tx_comp_handler(struct htc_target *target,
    struct htc_packet *packet)
{
 struct htc_endpoint *endpoint = &target->endpoint[packet->endpoint];
 struct list_head container;

 ath6kl_dbg(ATH6KL_DBG_HTC, "htc tx complete seqno %d\n",
     packet->info.tx.seqno);

 htc_tx_comp_update(target, endpoint, packet);
 INIT_LIST_HEAD(&container);
 list_add_tail(&packet->list, &container);

 htc_tx_complete(endpoint, &container);
}
