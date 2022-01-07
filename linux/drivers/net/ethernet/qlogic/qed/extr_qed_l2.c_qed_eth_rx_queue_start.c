
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qed_rxq_start_ret_params {void* p_handle; int p_prod; } ;
struct qed_queue_start_common_params {int dummy; } ;
struct qed_queue_cid {int dummy; } ;
struct qed_hwfn {int cdev; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 scalar_t__ IS_PF (int ) ;
 int qed_eth_pf_rx_queue_start (struct qed_hwfn*,struct qed_queue_cid*,int ,int ,int ,int ,int *) ;
 int qed_eth_queue_cid_release (struct qed_hwfn*,struct qed_queue_cid*) ;
 struct qed_queue_cid* qed_eth_queue_to_cid_pf (struct qed_hwfn*,int ,int,struct qed_queue_start_common_params*) ;
 int qed_vf_pf_rxq_start (struct qed_hwfn*,struct qed_queue_cid*,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
qed_eth_rx_queue_start(struct qed_hwfn *p_hwfn,
         u16 opaque_fid,
         struct qed_queue_start_common_params *p_params,
         u16 bd_max_bytes,
         dma_addr_t bd_chain_phys_addr,
         dma_addr_t cqe_pbl_addr,
         u16 cqe_pbl_size,
         struct qed_rxq_start_ret_params *p_ret_params)
{
 struct qed_queue_cid *p_cid;
 int rc;


 p_cid = qed_eth_queue_to_cid_pf(p_hwfn, opaque_fid, 1, p_params);
 if (!p_cid)
  return -ENOMEM;

 if (IS_PF(p_hwfn->cdev)) {
  rc = qed_eth_pf_rx_queue_start(p_hwfn, p_cid,
            bd_max_bytes,
            bd_chain_phys_addr,
            cqe_pbl_addr, cqe_pbl_size,
            &p_ret_params->p_prod);
 } else {
  rc = qed_vf_pf_rxq_start(p_hwfn, p_cid,
      bd_max_bytes,
      bd_chain_phys_addr,
      cqe_pbl_addr,
      cqe_pbl_size, &p_ret_params->p_prod);
 }


 if (rc)
  qed_eth_queue_cid_release(p_hwfn, p_cid);
 else
  p_ret_params->p_handle = (void *)p_cid;

 return rc;
}
