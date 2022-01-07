
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_aqc_get_set_rss_key_data {int dummy; } ;
typedef int i40e_status ;


 int i40e_aq_get_set_rss_key (struct i40e_hw*,int ,struct i40e_aqc_get_set_rss_key_data*,int) ;

i40e_status i40e_aq_get_rss_key(struct i40e_hw *hw,
    u16 vsi_id,
    struct i40e_aqc_get_set_rss_key_data *key)
{
 return i40e_aq_get_set_rss_key(hw, vsi_id, key, 0);
}
