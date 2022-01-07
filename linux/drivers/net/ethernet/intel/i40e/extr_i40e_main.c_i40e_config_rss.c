
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int hw_features; } ;


 int I40E_HW_RSS_AQ_CAPABLE ;
 int i40e_config_rss_aq (struct i40e_vsi*,int *,int *,int ) ;
 int i40e_config_rss_reg (struct i40e_vsi*,int *,int *,int ) ;

int i40e_config_rss(struct i40e_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
{
 struct i40e_pf *pf = vsi->back;

 if (pf->hw_features & I40E_HW_RSS_AQ_CAPABLE)
  return i40e_config_rss_aq(vsi, seed, lut, lut_size);
 else
  return i40e_config_rss_reg(vsi, seed, lut, lut_size);
}
