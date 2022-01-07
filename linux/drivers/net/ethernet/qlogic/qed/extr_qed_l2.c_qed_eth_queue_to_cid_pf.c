
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qed_queue_start_common_params {int dummy; } ;
struct qed_queue_cid {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 struct qed_queue_cid* qed_eth_queue_to_cid (struct qed_hwfn*,int ,struct qed_queue_start_common_params*,int,int *) ;

__attribute__((used)) static struct qed_queue_cid *
qed_eth_queue_to_cid_pf(struct qed_hwfn *p_hwfn,
   u16 opaque_fid,
   bool b_is_rx,
   struct qed_queue_start_common_params *p_params)
{
 return qed_eth_queue_to_cid(p_hwfn, opaque_fid, p_params, b_is_rx,
        ((void*)0));
}
