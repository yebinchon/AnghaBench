
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfpf_set_q_filters_tlv {int flags; int rx_mask; int vf_qid; int n_multicast; int multicast; } ;
struct pf_vf_bulletin_content {int valid_bitmap; } ;
struct bnx2x_virtf {int cfg_flags; int abs_vfid; int index; } ;
struct bnx2x_vf_mac_vlan_filters {int dummy; } ;
struct bnx2x {int dummy; } ;
struct TYPE_6__ {TYPE_2__* msg; } ;
struct TYPE_4__ {struct vfpf_set_q_filters_tlv set_q_filters; } ;
struct TYPE_5__ {TYPE_1__ req; } ;


 int BNX2X_ACCEPT_ANY_VLAN ;
 int BNX2X_ACCEPT_BROADCAST ;
 int BNX2X_ACCEPT_MULTICAST ;
 int BNX2X_ACCEPT_UNICAST ;
 int BNX2X_ERR (char*,int ,int ,int) ;
 struct pf_vf_bulletin_content* BP_VF_BULLETIN (struct bnx2x*,int ) ;
 TYPE_3__* BP_VF_MBX (struct bnx2x*,int ) ;
 int VFPF_MAC_FILTER ;
 int VFPF_RX_MASK_ACCEPT_ANY_VLAN ;
 int VFPF_RX_MASK_ACCEPT_NONE ;
 int VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED ;
 int VFPF_SET_Q_FILTERS_MULTICAST_CHANGED ;
 int VFPF_SET_Q_FILTERS_RX_MASK_CHANGED ;
 int VFPF_VLAN_FILTER ;
 int VFPF_VLAN_MAC_FILTER ;
 int VF_CFG_VLAN_FILTER ;
 int VLAN_VALID ;
 int __set_bit (int ,unsigned long*) ;
 int bnx2x_vf_mac_vlan_config_list (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mac_vlan_filters*,int ,int) ;
 int bnx2x_vf_mbx_macvlan_list (struct bnx2x*,struct bnx2x_virtf*,struct vfpf_set_q_filters_tlv*,struct bnx2x_vf_mac_vlan_filters**,int ) ;
 int bnx2x_vf_mcast (struct bnx2x*,struct bnx2x_virtf*,int ,int ,int) ;
 int bnx2x_vf_rxmode (struct bnx2x*,struct bnx2x_virtf*,int ,unsigned long) ;

__attribute__((used)) static int bnx2x_vf_mbx_qfilters(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 int rc = 0;

 struct vfpf_set_q_filters_tlv *msg =
  &BP_VF_MBX(bp, vf->index)->msg->req.set_q_filters;


 if (msg->flags & VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED) {
  struct bnx2x_vf_mac_vlan_filters *fl = ((void*)0);


  rc = bnx2x_vf_mbx_macvlan_list(bp, vf, msg, &fl,
            VFPF_VLAN_MAC_FILTER);
  if (rc)
   goto op_err;

  if (fl) {


   rc = bnx2x_vf_mac_vlan_config_list(bp, vf, fl,
          msg->vf_qid,
          0);
   if (rc)
    goto op_err;
  }


  fl = ((void*)0);

  rc = bnx2x_vf_mbx_macvlan_list(bp, vf, msg, &fl,
            VFPF_MAC_FILTER);
  if (rc)
   goto op_err;

  if (fl) {

   rc = bnx2x_vf_mac_vlan_config_list(bp, vf, fl,
          msg->vf_qid,
          0);
   if (rc)
    goto op_err;
  }


  fl = ((void*)0);

  rc = bnx2x_vf_mbx_macvlan_list(bp, vf, msg, &fl,
            VFPF_VLAN_FILTER);
  if (rc)
   goto op_err;

  if (fl) {

   rc = bnx2x_vf_mac_vlan_config_list(bp, vf, fl,
          msg->vf_qid,
          0);
   if (rc)
    goto op_err;
  }

 }

 if (msg->flags & VFPF_SET_Q_FILTERS_RX_MASK_CHANGED) {
  unsigned long accept = 0;
  struct pf_vf_bulletin_content *bulletin =
     BP_VF_BULLETIN(bp, vf->index);


  if (msg->rx_mask != VFPF_RX_MASK_ACCEPT_NONE) {
   __set_bit(BNX2X_ACCEPT_UNICAST, &accept);
   __set_bit(BNX2X_ACCEPT_MULTICAST, &accept);
   __set_bit(BNX2X_ACCEPT_BROADCAST, &accept);
  }







  if (!(bulletin->valid_bitmap & (1 << VLAN_VALID)) &&
      (!(vf->cfg_flags & VF_CFG_VLAN_FILTER) ||
       msg->rx_mask & VFPF_RX_MASK_ACCEPT_ANY_VLAN))
   __set_bit(BNX2X_ACCEPT_ANY_VLAN, &accept);


  rc = bnx2x_vf_rxmode(bp, vf, msg->vf_qid, accept);
  if (rc)
   goto op_err;
 }

 if (msg->flags & VFPF_SET_Q_FILTERS_MULTICAST_CHANGED) {

  rc = bnx2x_vf_mcast(bp, vf, msg->multicast,
        msg->n_multicast, 0);
  if (rc)
   goto op_err;
 }
op_err:
 if (rc)
  BNX2X_ERR("QFILTERS[%d:%d] error: rc %d\n",
     vf->abs_vfid, msg->vf_qid, rc);
 return rc;
}
