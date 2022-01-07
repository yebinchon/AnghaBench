
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct qed_dev {size_t num_hwfns; int * hwfns; } ;
struct eth_slow_path_rx_cqe {int dummy; } ;


 int qed_eth_cqe_completion (int *,struct eth_slow_path_rx_cqe*) ;

__attribute__((used)) static int qed_fp_cqe_completion(struct qed_dev *dev,
     u8 rss_id, struct eth_slow_path_rx_cqe *cqe)
{
 return qed_eth_cqe_completion(&dev->hwfns[rss_id % dev->num_hwfns],
          cqe);
}
