
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;
struct eth_slow_path_rx_cqe {int ramrod_cmd_id; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int ) ;
 int PROTOCOLID_ETH ;
 int qed_cqe_completion (struct qed_hwfn*,struct eth_slow_path_rx_cqe*,int ) ;

int qed_eth_cqe_completion(struct qed_hwfn *p_hwfn,
      struct eth_slow_path_rx_cqe *cqe)
{
 int rc;

 rc = qed_cqe_completion(p_hwfn, cqe, PROTOCOLID_ETH);
 if (rc)
  DP_NOTICE(p_hwfn,
     "Failed to handle RXQ CQE [cmd 0x%02x]\n",
     cqe->ramrod_cmd_id);

 return rc;
}
