
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfpf_set_q_filters_tlv {int n_mac_vlan_filters; struct vfpf_q_mac_vlan_filter* filters; } ;
struct vfpf_q_mac_vlan_filter {int flags; int mac; } ;
struct pf_vf_bulletin_content {int valid_bitmap; int mac; } ;
struct bnx2x_virtf {int abs_vfid; int index; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int ,...) ;
 struct pf_vf_bulletin_content* BP_VF_BULLETIN (struct bnx2x*,int ) ;
 int EPERM ;
 int MAC_ADDR_VALID ;
 int VFPF_Q_FILTER_DEST_MAC_VALID ;
 int ether_addr_equal (int ,int ) ;

__attribute__((used)) static int bnx2x_filters_validate_mac(struct bnx2x *bp,
          struct bnx2x_virtf *vf,
          struct vfpf_set_q_filters_tlv *filters)
{
 struct pf_vf_bulletin_content *bulletin = BP_VF_BULLETIN(bp, vf->index);
 int rc = 0;






 if (bulletin->valid_bitmap & 1 << MAC_ADDR_VALID) {
  struct vfpf_q_mac_vlan_filter *filter = ((void*)0);
  int i;

  for (i = 0; i < filters->n_mac_vlan_filters; i++) {
   if (!(filters->filters[i].flags &
         VFPF_Q_FILTER_DEST_MAC_VALID))
    continue;




   if (filter) {
    BNX2X_ERR("VF[%d] requested the addition of multiple macs after set_vf_mac ndo was called [%d filters]\n",
       vf->abs_vfid,
       filters->n_mac_vlan_filters);
    rc = -EPERM;
    goto response;
   }

   filter = &filters->filters[i];
  }


  if (filter &&
      !ether_addr_equal(filter->mac, bulletin->mac)) {
   BNX2X_ERR("VF[%d] requested the addition of a mac address not matching the one configured by set_vf_mac ndo\n",
      vf->abs_vfid);

   rc = -EPERM;
   goto response;
  }
 }

response:
 return rc;
}
