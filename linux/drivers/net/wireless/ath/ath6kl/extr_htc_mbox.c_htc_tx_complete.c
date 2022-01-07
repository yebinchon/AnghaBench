
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct htc_endpoint {int target; int eid; } ;


 int ATH6KL_DBG_HTC ;
 int ath6kl_dbg (int ,char*,int ,int ) ;
 int ath6kl_tx_complete (int ,struct list_head*) ;
 int get_queue_depth (struct list_head*) ;
 scalar_t__ list_empty (struct list_head*) ;

__attribute__((used)) static void htc_tx_complete(struct htc_endpoint *endpoint,
       struct list_head *txq)
{
 if (list_empty(txq))
  return;

 ath6kl_dbg(ATH6KL_DBG_HTC,
     "htc tx complete ep %d pkts %d\n",
     endpoint->eid, get_queue_depth(txq));

 ath6kl_tx_complete(endpoint->target, txq);
}
