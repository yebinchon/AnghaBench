
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfpf_set_q_filters_tlv {int flags; int n_mac_vlan_filters; int n_multicast; int * multicast; int rx_mask; int * filters; } ;
struct bnx2x {int dummy; } ;


 int DP (int,char*,int ) ;
 int VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED ;
 int VFPF_SET_Q_FILTERS_MULTICAST_CHANGED ;
 int VFPF_SET_Q_FILTERS_RX_MASK_CHANGED ;
 int bnx2x_vf_mbx_dp_q_filter (struct bnx2x*,int,int,int *) ;

__attribute__((used)) static void bnx2x_vf_mbx_dp_q_filters(struct bnx2x *bp, int msglvl,
           struct vfpf_set_q_filters_tlv *filters)
{
 int i;

 if (filters->flags & VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED)
  for (i = 0; i < filters->n_mac_vlan_filters; i++)
   bnx2x_vf_mbx_dp_q_filter(bp, msglvl, i,
       &filters->filters[i]);

 if (filters->flags & VFPF_SET_Q_FILTERS_RX_MASK_CHANGED)
  DP(msglvl, "RX-MASK=0x%x\n", filters->rx_mask);

 if (filters->flags & VFPF_SET_Q_FILTERS_MULTICAST_CHANGED)
  for (i = 0; i < filters->n_multicast; i++)
   DP(msglvl, "MULTICAST=%pM\n", filters->multicast[i]);
}
