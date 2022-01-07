
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int mc_filter_type; } ;
struct igc_hw {TYPE_1__ mac; } ;
struct igc_adapter {TYPE_2__* netdev; struct igc_hw hw; } ;
struct TYPE_4__ {int features; } ;


 int IGC_RCTL ;
 int IGC_RCTL_BAM ;
 int IGC_RCTL_CFIEN ;
 int IGC_RCTL_DPF ;
 int IGC_RCTL_EN ;
 int IGC_RCTL_LBM_MAC ;
 int IGC_RCTL_LBM_TCVR ;
 int IGC_RCTL_LPE ;
 int IGC_RCTL_MO_SHIFT ;
 int IGC_RCTL_PMCF ;
 int IGC_RCTL_RDMTS_HALF ;
 int IGC_RCTL_SBP ;
 int IGC_RCTL_SECRC ;
 int IGC_RCTL_SZ_256 ;
 int IGC_RXDCTL (int ) ;
 int NETIF_F_RXALL ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igc_setup_rctl(struct igc_adapter *adapter)
{
 struct igc_hw *hw = &adapter->hw;
 u32 rctl;

 rctl = rd32(IGC_RCTL);

 rctl &= ~(3 << IGC_RCTL_MO_SHIFT);
 rctl &= ~(IGC_RCTL_LBM_TCVR | IGC_RCTL_LBM_MAC);

 rctl |= IGC_RCTL_EN | IGC_RCTL_BAM | IGC_RCTL_RDMTS_HALF |
  (hw->mac.mc_filter_type << IGC_RCTL_MO_SHIFT);




 rctl |= IGC_RCTL_SECRC;


 rctl &= ~(IGC_RCTL_SBP | IGC_RCTL_SZ_256);


 rctl |= IGC_RCTL_LPE;


 wr32(IGC_RXDCTL(0), 0);


 if (adapter->netdev->features & NETIF_F_RXALL) {



  rctl |= (IGC_RCTL_SBP |
    IGC_RCTL_BAM |
    IGC_RCTL_PMCF);

  rctl &= ~(IGC_RCTL_DPF |
     IGC_RCTL_CFIEN);
 }

 wr32(IGC_RCTL, rctl);
}
