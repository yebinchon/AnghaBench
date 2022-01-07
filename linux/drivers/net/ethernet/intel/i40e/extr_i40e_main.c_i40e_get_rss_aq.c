
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i40e_vsi {scalar_t__ type; int id; struct i40e_pf* back; } ;
struct TYPE_4__ {int asq_last_status; } ;
struct i40e_hw {TYPE_2__ aq; } ;
struct i40e_pf {struct i40e_hw hw; TYPE_1__* pdev; } ;
struct i40e_aqc_get_set_rss_key_data {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ I40E_VSI_MAIN ;
 int dev_info (int *,char*,int ,int ) ;
 int i40e_aq_get_rss_key (struct i40e_hw*,int ,struct i40e_aqc_get_set_rss_key_data*) ;
 int i40e_aq_get_rss_lut (struct i40e_hw*,int ,int,int *,int ) ;
 int i40e_aq_str (struct i40e_hw*,int ) ;
 int i40e_stat_str (struct i40e_hw*,int) ;

__attribute__((used)) static int i40e_get_rss_aq(struct i40e_vsi *vsi, const u8 *seed,
      u8 *lut, u16 lut_size)
{
 struct i40e_pf *pf = vsi->back;
 struct i40e_hw *hw = &pf->hw;
 int ret = 0;

 if (seed) {
  ret = i40e_aq_get_rss_key(hw, vsi->id,
   (struct i40e_aqc_get_set_rss_key_data *)seed);
  if (ret) {
   dev_info(&pf->pdev->dev,
     "Cannot get RSS key, err %s aq_err %s\n",
     i40e_stat_str(&pf->hw, ret),
     i40e_aq_str(&pf->hw,
          pf->hw.aq.asq_last_status));
   return ret;
  }
 }

 if (lut) {
  bool pf_lut = vsi->type == I40E_VSI_MAIN ? 1 : 0;

  ret = i40e_aq_get_rss_lut(hw, vsi->id, pf_lut, lut, lut_size);
  if (ret) {
   dev_info(&pf->pdev->dev,
     "Cannot get RSS lut, err %s aq_err %s\n",
     i40e_stat_str(&pf->hw, ret),
     i40e_aq_str(&pf->hw,
          pf->hw.aq.asq_last_status));
   return ret;
  }
 }

 return ret;
}
