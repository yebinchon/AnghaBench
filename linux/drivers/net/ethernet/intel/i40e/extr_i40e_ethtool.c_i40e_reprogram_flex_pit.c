
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int hw; int l4_flex_pit_list; int l3_flex_pit_list; } ;


 int I40E_FLEX_PIT_IDX_START_L3 ;
 int I40E_FLEX_PIT_IDX_START_L4 ;
 int I40E_GLQF_ORT (int ) ;
 int I40E_L3_GLQF_ORT_IDX ;
 int I40E_L4_GLQF_ORT_IDX ;
 int I40E_ORT_PREP_VAL (int ,int,int) ;
 int __i40e_reprogram_flex_pit (struct i40e_pf*,int *,int ) ;
 int i40e_write_rx_ctl (int *,int ,int ) ;

__attribute__((used)) static void i40e_reprogram_flex_pit(struct i40e_pf *pf)
{
 __i40e_reprogram_flex_pit(pf, &pf->l3_flex_pit_list,
      I40E_FLEX_PIT_IDX_START_L3);

 __i40e_reprogram_flex_pit(pf, &pf->l4_flex_pit_list,
      I40E_FLEX_PIT_IDX_START_L4);


 i40e_write_rx_ctl(&pf->hw,
     I40E_GLQF_ORT(I40E_L3_GLQF_ORT_IDX),
     I40E_ORT_PREP_VAL(I40E_FLEX_PIT_IDX_START_L3,
         3, 1));

 i40e_write_rx_ctl(&pf->hw,
     I40E_GLQF_ORT(I40E_L4_GLQF_ORT_IDX),
     I40E_ORT_PREP_VAL(I40E_FLEX_PIT_IDX_START_L4,
         3, 1));
}
