
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_vif {int dummy; } ;
struct aggr_info_conn {int dummy; } ;
struct aggr_info {int rx_amsdu_freeq; void* aggr_conn; } ;


 int AGGR_NUM_OF_FREE_NETBUFS ;
 int GFP_KERNEL ;
 int aggr_conn_init (struct ath6kl_vif*,struct aggr_info*,void*) ;
 int ath6kl_alloc_netbufs (int *,int ) ;
 int ath6kl_err (char*) ;
 int kfree (struct aggr_info*) ;
 void* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;

struct aggr_info *aggr_init(struct ath6kl_vif *vif)
{
 struct aggr_info *p_aggr = ((void*)0);

 p_aggr = kzalloc(sizeof(struct aggr_info), GFP_KERNEL);
 if (!p_aggr) {
  ath6kl_err("failed to alloc memory for aggr_node\n");
  return ((void*)0);
 }

 p_aggr->aggr_conn = kzalloc(sizeof(struct aggr_info_conn), GFP_KERNEL);
 if (!p_aggr->aggr_conn) {
  ath6kl_err("failed to alloc memory for connection specific aggr info\n");
  kfree(p_aggr);
  return ((void*)0);
 }

 aggr_conn_init(vif, p_aggr, p_aggr->aggr_conn);

 skb_queue_head_init(&p_aggr->rx_amsdu_freeq);
 ath6kl_alloc_netbufs(&p_aggr->rx_amsdu_freeq, AGGR_NUM_OF_FREE_NETBUFS);

 return p_aggr;
}
