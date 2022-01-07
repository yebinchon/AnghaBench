
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_pf {int num_alloc_vsi; int state; TYPE_1__** vsi; } ;
struct TYPE_2__ {int flags; } ;


 int I40E_VSI_FLAG_FILTER_CHANGED ;
 int __I40E_MACVLAN_SYNC_PENDING ;
 int __I40E_VF_DISABLE ;
 int clear_bit (int ,int ) ;
 int i40e_sync_vsi_filters (TYPE_1__*) ;
 int set_bit (int ,int ) ;
 int test_and_clear_bit (int ,int ) ;
 scalar_t__ test_and_set_bit (int ,int ) ;

__attribute__((used)) static void i40e_sync_filters_subtask(struct i40e_pf *pf)
{
 int v;

 if (!pf)
  return;
 if (!test_and_clear_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state))
  return;
 if (test_and_set_bit(__I40E_VF_DISABLE, pf->state)) {
  set_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state);
  return;
 }

 for (v = 0; v < pf->num_alloc_vsi; v++) {
  if (pf->vsi[v] &&
      (pf->vsi[v]->flags & I40E_VSI_FLAG_FILTER_CHANGED)) {
   int ret = i40e_sync_vsi_filters(pf->vsi[v]);

   if (ret) {

    set_bit(__I40E_MACVLAN_SYNC_PENDING,
     pf->state);
    break;
   }
  }
 }
 clear_bit(__I40E_VF_DISABLE, pf->state);
}
