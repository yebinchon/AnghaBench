
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union eth_rx_cqe {int fast_path_tpa_end; int fast_path_tpa_cont; int fast_path_tpa_start; } ;
struct qede_rx_queue {int dummy; } ;
struct qede_fastpath {int dummy; } ;
struct qede_dev {int dummy; } ;
typedef enum eth_rx_cqe_type { ____Placeholder_eth_rx_cqe_type } eth_rx_cqe_type ;





 int qede_tpa_cont (struct qede_dev*,struct qede_rx_queue*,int *) ;
 int qede_tpa_end (struct qede_dev*,struct qede_fastpath*,int *) ;
 int qede_tpa_start (struct qede_dev*,struct qede_rx_queue*,int *) ;

__attribute__((used)) static int qede_rx_process_tpa_cqe(struct qede_dev *edev,
       struct qede_fastpath *fp,
       struct qede_rx_queue *rxq,
       union eth_rx_cqe *cqe,
       enum eth_rx_cqe_type type)
{
 switch (type) {
 case 128:
  qede_tpa_start(edev, rxq, &cqe->fast_path_tpa_start);
  return 0;
 case 130:
  qede_tpa_cont(edev, rxq, &cqe->fast_path_tpa_cont);
  return 0;
 case 129:
  return qede_tpa_end(edev, fp, &cqe->fast_path_tpa_end);
 default:
  return 0;
 }
}
