
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfpf_set_q_filters_tlv {scalar_t__ vf_qid; } ;
struct pf_vf_bulletin_content {int valid_bitmap; } ;
struct bnx2x_virtf {int abs_vfid; int index; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int ) ;
 struct pf_vf_bulletin_content* BP_VF_BULLETIN (struct bnx2x*,int ) ;
 int EPERM ;
 int VFPF_Q_FILTER_VLAN_TAG_VALID ;
 int VLAN_VALID ;
 scalar_t__ bnx2x_vf_filters_contain (struct vfpf_set_q_filters_tlv*,int ) ;
 scalar_t__ vf_rxq_count (struct bnx2x_virtf*) ;

__attribute__((used)) static int bnx2x_filters_validate_vlan(struct bnx2x *bp,
           struct bnx2x_virtf *vf,
           struct vfpf_set_q_filters_tlv *filters)
{
 struct pf_vf_bulletin_content *bulletin = BP_VF_BULLETIN(bp, vf->index);
 int rc = 0;


 if (bulletin->valid_bitmap & 1 << VLAN_VALID) {


  if (bnx2x_vf_filters_contain(filters,
          VFPF_Q_FILTER_VLAN_TAG_VALID)) {
   BNX2X_ERR("VF[%d] attempted to configure vlan but one was already set by Hypervisor. Aborting request\n",
      vf->abs_vfid);
   rc = -EPERM;
   goto response;
  }
 }


 if (filters->vf_qid > vf_rxq_count(vf)) {
  rc = -EPERM;
  goto response;
 }

response:
 return rc;
}
