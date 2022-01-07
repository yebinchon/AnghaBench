
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct iwl_pwr_tx_backoff {scalar_t__ pwr; int backoff; } ;
struct iwl_mvm {int dev; TYPE_1__* cfg; } ;
struct TYPE_2__ {struct iwl_pwr_tx_backoff* pwr_tx_backoffs; } ;


 scalar_t__ iwl_acpi_get_pwr_limit (int ) ;

__attribute__((used)) static u32 iwl_mvm_min_backoff(struct iwl_mvm *mvm)
{
 const struct iwl_pwr_tx_backoff *backoff = mvm->cfg->pwr_tx_backoffs;
 u64 dflt_pwr_limit;

 if (!backoff)
  return 0;

 dflt_pwr_limit = iwl_acpi_get_pwr_limit(mvm->dev);

 while (backoff->pwr) {
  if (dflt_pwr_limit >= backoff->pwr)
   return backoff->backoff;

  backoff++;
 }

 return 0;
}
