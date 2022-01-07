
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf_pf_resc_request {int num_cids; int num_mc_filters; int num_vlan_filters; int num_mac_filters; int num_sbs; int num_rxqs; int num_txqs; } ;
struct qed_hwfn {int dummy; } ;
struct pf_vf_resc {int num_cids; int num_mc_filters; int num_vlan_filters; int num_mac_filters; int num_sbs; int num_rxqs; int num_txqs; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int QED_MSG_IOV ;

__attribute__((used)) static void qed_vf_pf_acquire_reduce_resc(struct qed_hwfn *p_hwfn,
       struct vf_pf_resc_request *p_req,
       struct pf_vf_resc *p_resp)
{
 DP_VERBOSE(p_hwfn,
     QED_MSG_IOV,
     "PF unwilling to fulfill resource request: rxq [%02x/%02x] txq [%02x/%02x] sbs [%02x/%02x] mac [%02x/%02x] vlan [%02x/%02x] mc [%02x/%02x] cids [%02x/%02x]. Try PF recommended amount\n",
     p_req->num_rxqs,
     p_resp->num_rxqs,
     p_req->num_rxqs,
     p_resp->num_txqs,
     p_req->num_sbs,
     p_resp->num_sbs,
     p_req->num_mac_filters,
     p_resp->num_mac_filters,
     p_req->num_vlan_filters,
     p_resp->num_vlan_filters,
     p_req->num_mc_filters,
     p_resp->num_mc_filters, p_req->num_cids, p_resp->num_cids);


 p_req->num_txqs = p_resp->num_txqs;
 p_req->num_rxqs = p_resp->num_rxqs;
 p_req->num_sbs = p_resp->num_sbs;
 p_req->num_mac_filters = p_resp->num_mac_filters;
 p_req->num_vlan_filters = p_resp->num_vlan_filters;
 p_req->num_mc_filters = p_resp->num_mc_filters;
 p_req->num_cids = p_resp->num_cids;
}
