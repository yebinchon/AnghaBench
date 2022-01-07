
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* set_vmdq ) (struct ixgbe_hw*,int ,int) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags; scalar_t__ bridge_mode; int num_vfs; TYPE_4__* vfinfo; int netdev; TYPE_3__* ring_feature; int flags2; int num_rx_pools; struct ixgbe_hw hw; } ;
struct TYPE_8__ {int rss_query_enabled; int spoofchk_enabled; } ;
struct TYPE_7__ {int mask; } ;


 scalar_t__ BRIDGE_MODE_VEB ;
 int GENMASK (int,int) ;


 int IXGBE_FLAG2_VLAN_PROMISC ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 int IXGBE_GCR_EXT ;
 int IXGBE_GCR_EXT_VT_MODE_16 ;
 int IXGBE_GCR_EXT_VT_MODE_32 ;
 int IXGBE_GCR_EXT_VT_MODE_64 ;
 int IXGBE_PFDTXGSWC ;
 int IXGBE_PFDTXGSWC_VT_LBEN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VFRE (int) ;
 int IXGBE_VFTE (int) ;
 int IXGBE_VMD_CTL_VMDQ_EN ;
 int IXGBE_VMOLR (int) ;
 int IXGBE_VMOLR_AUPE ;
 int IXGBE_VT_CTL ;
 int IXGBE_VT_CTL_POOL_MASK ;
 int IXGBE_VT_CTL_POOL_SHIFT ;
 int IXGBE_VT_CTL_REPLEN ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 size_t RING_F_VMDQ ;
 int VMDQ_P (int ) ;
 int ixgbe_ndo_set_vf_rss_query_en (int ,int,int ) ;
 int ixgbe_ndo_set_vf_spoofchk (int ,int,int ) ;
 int stub1 (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static void ixgbe_configure_virtualization(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u16 pool = adapter->num_rx_pools;
 u32 reg_offset, vf_shift, vmolr;
 u32 gcr_ext, vmdctl;
 int i;

 if (!(adapter->flags & IXGBE_FLAG_SRIOV_ENABLED))
  return;

 vmdctl = IXGBE_READ_REG(hw, IXGBE_VT_CTL);
 vmdctl |= IXGBE_VMD_CTL_VMDQ_EN;
 vmdctl &= ~IXGBE_VT_CTL_POOL_MASK;
 vmdctl |= VMDQ_P(0) << IXGBE_VT_CTL_POOL_SHIFT;
 vmdctl |= IXGBE_VT_CTL_REPLEN;
 IXGBE_WRITE_REG(hw, IXGBE_VT_CTL, vmdctl);




 vmolr = IXGBE_VMOLR_AUPE;
 while (pool--)
  IXGBE_WRITE_REG(hw, IXGBE_VMOLR(VMDQ_P(pool)), vmolr);

 vf_shift = VMDQ_P(0) % 32;
 reg_offset = (VMDQ_P(0) >= 32) ? 1 : 0;


 IXGBE_WRITE_REG(hw, IXGBE_VFRE(reg_offset), GENMASK(31, vf_shift));
 IXGBE_WRITE_REG(hw, IXGBE_VFRE(reg_offset ^ 1), reg_offset - 1);
 IXGBE_WRITE_REG(hw, IXGBE_VFTE(reg_offset), GENMASK(31, vf_shift));
 IXGBE_WRITE_REG(hw, IXGBE_VFTE(reg_offset ^ 1), reg_offset - 1);
 if (adapter->bridge_mode == BRIDGE_MODE_VEB)
  IXGBE_WRITE_REG(hw, IXGBE_PFDTXGSWC, IXGBE_PFDTXGSWC_VT_LBEN);


 hw->mac.ops.set_vmdq(hw, 0, VMDQ_P(0));


 adapter->flags2 &= ~IXGBE_FLAG2_VLAN_PROMISC;





 switch (adapter->ring_feature[RING_F_VMDQ].mask) {
 case 128:
  gcr_ext = IXGBE_GCR_EXT_VT_MODE_16;
  break;
 case 129:
  gcr_ext = IXGBE_GCR_EXT_VT_MODE_32;
  break;
 default:
  gcr_ext = IXGBE_GCR_EXT_VT_MODE_64;
  break;
 }

 IXGBE_WRITE_REG(hw, IXGBE_GCR_EXT, gcr_ext);

 for (i = 0; i < adapter->num_vfs; i++) {

  ixgbe_ndo_set_vf_spoofchk(adapter->netdev, i,
       adapter->vfinfo[i].spoofchk_enabled);


  ixgbe_ndo_set_vf_rss_query_en(adapter->netdev, i,
       adapter->vfinfo[i].rss_query_enabled);
 }
}
