
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_rx_queue {int dummy; } ;
struct qede_dev {int dummy; } ;
struct eth_fast_path_rx_tpa_cont_cqe {scalar_t__* len_list; int tpa_agg_index; } ;


 int DP_ERR (struct qede_dev*,char*) ;
 int le16_to_cpu (scalar_t__) ;
 int qede_fill_frag_skb (struct qede_dev*,struct qede_rx_queue*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void qede_tpa_cont(struct qede_dev *edev,
     struct qede_rx_queue *rxq,
     struct eth_fast_path_rx_tpa_cont_cqe *cqe)
{
 int i;

 for (i = 0; cqe->len_list[i]; i++)
  qede_fill_frag_skb(edev, rxq, cqe->tpa_agg_index,
       le16_to_cpu(cqe->len_list[i]));

 if (unlikely(i > 1))
  DP_ERR(edev,
         "Strange - TPA cont with more than a single len_list entry\n");
}
