
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct igc_hw {TYPE_1__ mac; } ;
struct igc_adapter {int num_q_vectors; int * q_vector; int eims_other; int eims_enable_mask; struct igc_hw hw; } ;


 int BIT (int) ;
 int IGC_GPIE ;
 int IGC_GPIE_EIAME ;
 int IGC_GPIE_MSIX_MODE ;
 int IGC_GPIE_NSICR ;
 int IGC_GPIE_PBA ;
 int IGC_IVAR_MISC ;
 int IGC_IVAR_VALID ;
 int igc_assign_vector (int ,int ) ;

 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static void igc_configure_msix(struct igc_adapter *adapter)
{
 struct igc_hw *hw = &adapter->hw;
 int i, vector = 0;
 u32 tmp;

 adapter->eims_enable_mask = 0;


 switch (hw->mac.type) {
 case 128:



  wr32(IGC_GPIE, IGC_GPIE_MSIX_MODE |
       IGC_GPIE_PBA | IGC_GPIE_EIAME |
       IGC_GPIE_NSICR);


  adapter->eims_other = BIT(vector);
  tmp = (vector++ | IGC_IVAR_VALID) << 8;

  wr32(IGC_IVAR_MISC, tmp);
  break;
 default:

  break;
 }

 adapter->eims_enable_mask |= adapter->eims_other;

 for (i = 0; i < adapter->num_q_vectors; i++)
  igc_assign_vector(adapter->q_vector[i], vector++);

 wrfl();
}
