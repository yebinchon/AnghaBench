
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_hw {int mbx; } ;
typedef int s32 ;


 int fm10k_get_invariants_generic (struct fm10k_hw*) ;
 int fm10k_msg_data_vf ;
 int fm10k_pfvf_mbx_init (struct fm10k_hw*,int *,int ,int ) ;

__attribute__((used)) static s32 fm10k_get_invariants_vf(struct fm10k_hw *hw)
{
 fm10k_get_invariants_generic(hw);

 return fm10k_pfvf_mbx_init(hw, &hw->mbx, fm10k_msg_data_vf, 0);
}
