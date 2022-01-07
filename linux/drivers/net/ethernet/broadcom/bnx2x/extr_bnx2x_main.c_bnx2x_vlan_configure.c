
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int accept_any_vlan; } ;


 int DP (int ,char*,char*) ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 int NETIF_MSG_IFUP ;
 int bnx2x_set_rx_mode_inner (struct bnx2x*) ;
 int bnx2x_vfpf_storm_rx_mode (struct bnx2x*) ;
 int bnx2x_vlan_configure_vid_list (struct bnx2x*) ;

__attribute__((used)) static void bnx2x_vlan_configure(struct bnx2x *bp, bool set_rx_mode)
{
 bool need_accept_any_vlan;

 need_accept_any_vlan = !!bnx2x_vlan_configure_vid_list(bp);

 if (bp->accept_any_vlan != need_accept_any_vlan) {
  bp->accept_any_vlan = need_accept_any_vlan;
  DP(NETIF_MSG_IFUP, "Accept all VLAN %s\n",
     bp->accept_any_vlan ? "raised" : "cleared");
  if (set_rx_mode) {
   if (IS_PF(bp))
    bnx2x_set_rx_mode_inner(bp);
   else
    bnx2x_vfpf_storm_rx_mode(bp);
  }
 }
}
