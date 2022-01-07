
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_vf {int vf_id; int lan_vsi_id; struct i40e_pf* pf; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {struct i40e_hw hw; } ;


 int I40E_VPLAN_MAPENA (int ) ;
 int I40E_VPLAN_MAPENA_TXRX_ENA_MASK ;
 int I40E_VSILAN_QBASE (int ) ;
 int I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK ;
 int i40e_flush (struct i40e_hw*) ;
 int i40e_map_pf_queues_to_vsi (struct i40e_vf*) ;
 int i40e_map_pf_to_vf_queues (struct i40e_vf*) ;
 int i40e_write_rx_ctl (struct i40e_hw*,int ,int ) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static void i40e_enable_vf_mappings(struct i40e_vf *vf)
{
 struct i40e_pf *pf = vf->pf;
 struct i40e_hw *hw = &pf->hw;
 u32 reg;





 i40e_write_rx_ctl(hw, I40E_VSILAN_QBASE(vf->lan_vsi_id),
     I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK);


 reg = I40E_VPLAN_MAPENA_TXRX_ENA_MASK;
 wr32(hw, I40E_VPLAN_MAPENA(vf->vf_id), reg);

 i40e_map_pf_to_vf_queues(vf);
 i40e_map_pf_queues_to_vsi(vf);

 i40e_flush(hw);
}
