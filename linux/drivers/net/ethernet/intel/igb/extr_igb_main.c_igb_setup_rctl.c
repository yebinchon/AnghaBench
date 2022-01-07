
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int mc_filter_type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {TYPE_2__* netdev; scalar_t__ vfs_allocated_count; struct e1000_hw hw; } ;
struct TYPE_4__ {int features; } ;


 int ALL_QUEUES ;
 int E1000_QDE ;
 int E1000_RCTL ;
 int E1000_RCTL_BAM ;
 int E1000_RCTL_CFIEN ;
 int E1000_RCTL_DPF ;
 int E1000_RCTL_EN ;
 int E1000_RCTL_LBM_MAC ;
 int E1000_RCTL_LBM_TCVR ;
 int E1000_RCTL_LPE ;
 int E1000_RCTL_MO_SHIFT ;
 int E1000_RCTL_PMCF ;
 int E1000_RCTL_RDMTS_HALF ;
 int E1000_RCTL_SBP ;
 int E1000_RCTL_SECRC ;
 int E1000_RCTL_SZ_256 ;
 int E1000_RXDCTL (int ) ;
 int NETIF_F_RXALL ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

void igb_setup_rctl(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 rctl;

 rctl = rd32(E1000_RCTL);

 rctl &= ~(3 << E1000_RCTL_MO_SHIFT);
 rctl &= ~(E1000_RCTL_LBM_TCVR | E1000_RCTL_LBM_MAC);

 rctl |= E1000_RCTL_EN | E1000_RCTL_BAM | E1000_RCTL_RDMTS_HALF |
  (hw->mac.mc_filter_type << E1000_RCTL_MO_SHIFT);





 rctl |= E1000_RCTL_SECRC;


 rctl &= ~(E1000_RCTL_SBP | E1000_RCTL_SZ_256);


 rctl |= E1000_RCTL_LPE;


 wr32(E1000_RXDCTL(0), 0);





 if (adapter->vfs_allocated_count) {

  wr32(E1000_QDE, ALL_QUEUES);
 }


 if (adapter->netdev->features & NETIF_F_RXALL) {



  rctl |= (E1000_RCTL_SBP |
    E1000_RCTL_BAM |
    E1000_RCTL_PMCF);

  rctl &= ~(E1000_RCTL_DPF |
     E1000_RCTL_CFIEN);



 }

 wr32(E1000_RCTL, rctl);
}
