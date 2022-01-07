
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int phy_flags; int flags; int dev; int phy_port; } ;


 int BNX2_DRV_ACK_CAP_MB ;
 int BNX2_DRV_ACK_CAP_SIGNATURE ;
 int BNX2_FLAG_ASF_ENABLE ;
 int BNX2_FLAG_CAN_KEEP_VLAN ;
 int BNX2_FW_CAP_CAN_KEEP_VLAN ;
 int BNX2_FW_CAP_MB ;
 int BNX2_FW_CAP_REMOTE_PHY_CAPABLE ;
 int BNX2_FW_CAP_SIGNATURE ;
 int BNX2_FW_CAP_SIGNATURE_MASK ;
 int BNX2_LINK_STATUS ;
 int BNX2_LINK_STATUS_SERDES_LINK ;
 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ;
 int BNX2_PHY_FLAG_SERDES ;
 int PORT_FIBRE ;
 int PORT_TP ;
 int bnx2_shmem_rd (struct bnx2*,int ) ;
 int bnx2_shmem_wr (struct bnx2*,int ,int) ;
 scalar_t__ netif_running (int ) ;

__attribute__((used)) static void
bnx2_init_fw_cap(struct bnx2 *bp)
{
 u32 val, sig = 0;

 bp->phy_flags &= ~BNX2_PHY_FLAG_REMOTE_PHY_CAP;
 bp->flags &= ~BNX2_FLAG_CAN_KEEP_VLAN;

 if (!(bp->flags & BNX2_FLAG_ASF_ENABLE))
  bp->flags |= BNX2_FLAG_CAN_KEEP_VLAN;

 val = bnx2_shmem_rd(bp, BNX2_FW_CAP_MB);
 if ((val & BNX2_FW_CAP_SIGNATURE_MASK) != BNX2_FW_CAP_SIGNATURE)
  return;

 if ((val & BNX2_FW_CAP_CAN_KEEP_VLAN) == BNX2_FW_CAP_CAN_KEEP_VLAN) {
  bp->flags |= BNX2_FLAG_CAN_KEEP_VLAN;
  sig |= BNX2_DRV_ACK_CAP_SIGNATURE | BNX2_FW_CAP_CAN_KEEP_VLAN;
 }

 if ((bp->phy_flags & BNX2_PHY_FLAG_SERDES) &&
     (val & BNX2_FW_CAP_REMOTE_PHY_CAPABLE)) {
  u32 link;

  bp->phy_flags |= BNX2_PHY_FLAG_REMOTE_PHY_CAP;

  link = bnx2_shmem_rd(bp, BNX2_LINK_STATUS);
  if (link & BNX2_LINK_STATUS_SERDES_LINK)
   bp->phy_port = PORT_FIBRE;
  else
   bp->phy_port = PORT_TP;

  sig |= BNX2_DRV_ACK_CAP_SIGNATURE |
         BNX2_FW_CAP_REMOTE_PHY_CAPABLE;
 }

 if (netif_running(bp->dev) && sig)
  bnx2_shmem_wr(bp, BNX2_DRV_ACK_CAP_MB, sig);
}
