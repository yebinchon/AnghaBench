
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int num_q_vectors; int * q_vector; int eims_other; int eims_enable_mask; struct e1000_hw hw; } ;


 int BIT (int) ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_EIAME ;
 int E1000_CTRL_EXT_IRCA ;
 int E1000_CTRL_EXT_PBA_CLR ;
 int E1000_EIMS_OTHER ;
 int E1000_GPIE ;
 int E1000_GPIE_EIAME ;
 int E1000_GPIE_MSIX_MODE ;
 int E1000_GPIE_NSICR ;
 int E1000_GPIE_PBA ;
 int E1000_IVAR_MISC ;
 int E1000_IVAR_VALID ;
 int E1000_MSIXBM (int ) ;
 int array_wr32 (int ,int ,int ) ;







 int igb_assign_vector (int ,int ) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static void igb_configure_msix(struct igb_adapter *adapter)
{
 u32 tmp;
 int i, vector = 0;
 struct e1000_hw *hw = &adapter->hw;

 adapter->eims_enable_mask = 0;


 switch (hw->mac.type) {
 case 134:
  tmp = rd32(E1000_CTRL_EXT);

  tmp |= E1000_CTRL_EXT_PBA_CLR;


  tmp |= E1000_CTRL_EXT_EIAME;
  tmp |= E1000_CTRL_EXT_IRCA;

  wr32(E1000_CTRL_EXT, tmp);


  array_wr32(E1000_MSIXBM(0), vector++, E1000_EIMS_OTHER);
  adapter->eims_other = E1000_EIMS_OTHER;

  break;

 case 133:
 case 132:
 case 129:
 case 128:
 case 131:
 case 130:



  wr32(E1000_GPIE, E1000_GPIE_MSIX_MODE |
       E1000_GPIE_PBA | E1000_GPIE_EIAME |
       E1000_GPIE_NSICR);


  adapter->eims_other = BIT(vector);
  tmp = (vector++ | E1000_IVAR_VALID) << 8;

  wr32(E1000_IVAR_MISC, tmp);
  break;
 default:

  break;
 }

 adapter->eims_enable_mask |= adapter->eims_other;

 for (i = 0; i < adapter->num_q_vectors; i++)
  igb_assign_vector(adapter->q_vector[i], vector++);

 wrfl();
}
