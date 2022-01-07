
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_new_mac_filter {int state; } ;
struct i40e_aqc_add_macvlan_element_data {scalar_t__ match_method; } ;


 scalar_t__ I40E_AQC_MM_ERR_NO_RES ;
 int I40E_FILTER_ACTIVE ;
 int I40E_FILTER_FAILED ;
 struct i40e_new_mac_filter* i40e_next_filter (struct i40e_new_mac_filter*) ;

__attribute__((used)) static int
i40e_update_filter_state(int count,
    struct i40e_aqc_add_macvlan_element_data *add_list,
    struct i40e_new_mac_filter *add_head)
{
 int retval = 0;
 int i;

 for (i = 0; i < count; i++) {






  if (add_list[i].match_method == I40E_AQC_MM_ERR_NO_RES) {
   add_head->state = I40E_FILTER_FAILED;
  } else {
   add_head->state = I40E_FILTER_ACTIVE;
   retval++;
  }

  add_head = i40e_next_filter(add_head);
  if (!add_head)
   break;
 }

 return retval;
}
