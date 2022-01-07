
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_hw {int dummy; } ;


 int IGC_SWFW_EEP_SM ;
 int igc_release_swfw_sync_i225 (struct igc_hw*,int ) ;

__attribute__((used)) static void igc_release_nvm_i225(struct igc_hw *hw)
{
 igc_release_swfw_sync_i225(hw, IGC_SWFW_EEP_SM);
}
