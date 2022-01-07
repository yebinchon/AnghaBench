
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vf {int vf_id; struct i40e_pf* pf; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {struct i40e_hw hw; } ;


 int I40E_MAX_VSI_QP ;
 int I40E_QUEUE_END_OF_LIST ;
 int I40E_VPLAN_MAPENA (int ) ;
 int I40E_VPLAN_QTABLE (int,int ) ;
 int i40e_flush (struct i40e_hw*) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static void i40e_disable_vf_mappings(struct i40e_vf *vf)
{
 struct i40e_pf *pf = vf->pf;
 struct i40e_hw *hw = &pf->hw;
 int i;


 wr32(hw, I40E_VPLAN_MAPENA(vf->vf_id), 0);
 for (i = 0; i < I40E_MAX_VSI_QP; i++)
  wr32(hw, I40E_VPLAN_QTABLE(i, vf->vf_id),
       I40E_QUEUE_END_OF_LIST);
 i40e_flush(hw);
}
