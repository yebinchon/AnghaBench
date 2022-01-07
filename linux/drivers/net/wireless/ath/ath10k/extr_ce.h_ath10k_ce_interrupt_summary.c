
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_ce {TYPE_2__* bus_ops; } ;
struct TYPE_3__ {int per_ce_irq; } ;
struct ath10k {TYPE_1__ hw_params; } ;
struct TYPE_4__ {int (* read32 ) (struct ath10k*,scalar_t__) ;} ;


 int CE_INTERRUPT_SUMMARY ;
 scalar_t__ CE_WRAPPER_BASE_ADDRESS ;
 scalar_t__ CE_WRAPPER_INTERRUPT_SUMMARY_ADDRESS ;
 int CE_WRAPPER_INTERRUPT_SUMMARY_HOST_MSI_GET (int ) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int stub1 (struct ath10k*,scalar_t__) ;

__attribute__((used)) static inline u32 ath10k_ce_interrupt_summary(struct ath10k *ar)
{
 struct ath10k_ce *ce = ath10k_ce_priv(ar);

 if (!ar->hw_params.per_ce_irq)
  return CE_WRAPPER_INTERRUPT_SUMMARY_HOST_MSI_GET(
   ce->bus_ops->read32((ar), CE_WRAPPER_BASE_ADDRESS +
   CE_WRAPPER_INTERRUPT_SUMMARY_ADDRESS));
 else
  return CE_INTERRUPT_SUMMARY;
}
