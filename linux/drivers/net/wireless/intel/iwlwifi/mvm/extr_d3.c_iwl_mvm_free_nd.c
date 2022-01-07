
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {scalar_t__ n_nd_channels; int * nd_channels; scalar_t__ n_nd_match_sets; int * nd_match_sets; } ;


 int kfree (int *) ;

__attribute__((used)) static void iwl_mvm_free_nd(struct iwl_mvm *mvm)
{
 kfree(mvm->nd_match_sets);
 mvm->nd_match_sets = ((void*)0);
 mvm->n_nd_match_sets = 0;
 kfree(mvm->nd_channels);
 mvm->nd_channels = ((void*)0);
 mvm->n_nd_channels = 0;
}
