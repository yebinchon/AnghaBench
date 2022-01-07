
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int flags; } ;
struct bnxt_vnic_info {int rx_mask; scalar_t__ mc_list_count; } ;
struct bnxt {int sp_event; struct bnxt_vnic_info* vnic_info; int state; } ;


 int BNXT_RX_MASK_SP_EVENT ;
 int BNXT_STATE_OPEN ;
 int CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST ;
 int CFA_L2_SET_RX_MASK_REQ_MASK_BCAST ;
 int CFA_L2_SET_RX_MASK_REQ_MASK_MCAST ;
 int CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int bnxt_mc_list_updated (struct bnxt*,int*) ;
 scalar_t__ bnxt_promisc_ok (struct bnxt*) ;
 int bnxt_queue_sp_work (struct bnxt*) ;
 int bnxt_uc_list_updated (struct bnxt*) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void bnxt_set_rx_mode(struct net_device *dev)
{
 struct bnxt *bp = netdev_priv(dev);
 struct bnxt_vnic_info *vnic;
 bool mc_update = 0;
 bool uc_update;
 u32 mask;

 if (!test_bit(BNXT_STATE_OPEN, &bp->state))
  return;

 vnic = &bp->vnic_info[0];
 mask = vnic->rx_mask;
 mask &= ~(CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS |
    CFA_L2_SET_RX_MASK_REQ_MASK_MCAST |
    CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST |
    CFA_L2_SET_RX_MASK_REQ_MASK_BCAST);

 if ((dev->flags & IFF_PROMISC) && bnxt_promisc_ok(bp))
  mask |= CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS;

 uc_update = bnxt_uc_list_updated(bp);

 if (dev->flags & IFF_BROADCAST)
  mask |= CFA_L2_SET_RX_MASK_REQ_MASK_BCAST;
 if (dev->flags & IFF_ALLMULTI) {
  mask |= CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST;
  vnic->mc_list_count = 0;
 } else {
  mc_update = bnxt_mc_list_updated(bp, &mask);
 }

 if (mask != vnic->rx_mask || uc_update || mc_update) {
  vnic->rx_mask = mask;

  set_bit(BNXT_RX_MASK_SP_EVENT, &bp->sp_event);
  bnxt_queue_sp_work(bp);
 }
}
