
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct e1000_hw {int mc_filter_type; int tbi_compatibility_on; } ;
struct e1000_adapter {int rx_buffer_len; TYPE_1__* netdev; struct e1000_hw hw; } ;
struct TYPE_2__ {scalar_t__ mtu; int features; } ;


 int E1000_RCTL_BAM ;
 int E1000_RCTL_BSEX ;
 int E1000_RCTL_CFIEN ;
 int E1000_RCTL_DPF ;
 int E1000_RCTL_LBM_NO ;
 int E1000_RCTL_LPE ;
 int E1000_RCTL_MO_SHIFT ;
 int E1000_RCTL_PMCF ;
 int E1000_RCTL_RDMTS_HALF ;
 int E1000_RCTL_SBP ;
 int E1000_RCTL_SZ_16384 ;
 int E1000_RCTL_SZ_2048 ;
 int E1000_RCTL_SZ_4096 ;
 int E1000_RCTL_SZ_8192 ;
 int E1000_RCTL_VFE ;




 scalar_t__ ETH_DATA_LEN ;
 int NETIF_F_RXALL ;
 int RCTL ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static void e1000_setup_rctl(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 rctl;

 rctl = er32(RCTL);

 rctl &= ~(3 << E1000_RCTL_MO_SHIFT);

 rctl |= E1000_RCTL_BAM | E1000_RCTL_LBM_NO |
  E1000_RCTL_RDMTS_HALF |
  (hw->mc_filter_type << E1000_RCTL_MO_SHIFT);

 if (hw->tbi_compatibility_on == 1)
  rctl |= E1000_RCTL_SBP;
 else
  rctl &= ~E1000_RCTL_SBP;

 if (adapter->netdev->mtu <= ETH_DATA_LEN)
  rctl &= ~E1000_RCTL_LPE;
 else
  rctl |= E1000_RCTL_LPE;


 rctl &= ~E1000_RCTL_SZ_4096;
 rctl |= E1000_RCTL_BSEX;
 switch (adapter->rx_buffer_len) {
 case 130:
 default:
  rctl |= E1000_RCTL_SZ_2048;
  rctl &= ~E1000_RCTL_BSEX;
  break;
 case 129:
  rctl |= E1000_RCTL_SZ_4096;
  break;
 case 128:
  rctl |= E1000_RCTL_SZ_8192;
  break;
 case 131:
  rctl |= E1000_RCTL_SZ_16384;
  break;
 }


 if (adapter->netdev->features & NETIF_F_RXALL) {



  rctl |= (E1000_RCTL_SBP |
    E1000_RCTL_BAM |
    E1000_RCTL_PMCF);

  rctl &= ~(E1000_RCTL_VFE |
     E1000_RCTL_DPF |
     E1000_RCTL_CFIEN);



 }

 ew32(RCTL, rctl);
}
