
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf_pf_resc_request {int num_sbs; scalar_t__ num_mc_filters; int num_vlan_filters; int num_mac_filters; scalar_t__ num_txqs; scalar_t__ num_rxqs; } ;
struct bnx2x_virtf {int sb_count; struct vf_pf_resc_request alloc_resc; } ;
struct bnx2x {int dummy; } ;


 int VF_MAC_CREDIT_CNT ;
 int VF_VLAN_CREDIT_CNT ;

__attribute__((used)) static void
bnx2x_iov_static_resc(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 struct vf_pf_resc_request *resc = &vf->alloc_resc;


 resc->num_rxqs = 0;
 resc->num_txqs = 0;

 resc->num_mac_filters = VF_MAC_CREDIT_CNT;
 resc->num_vlan_filters = VF_VLAN_CREDIT_CNT;


 resc->num_mc_filters = 0;


 resc->num_sbs = vf->sb_count;
}
