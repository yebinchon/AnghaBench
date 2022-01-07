
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msix_entry {int entry; } ;
struct iwl_trans {int dummy; } ;


 int BIT (int ) ;
 int CSR_MSIX_AUTOMASK_ST_AD ;
 int iwl_write32 (struct iwl_trans*,int ,int ) ;

__attribute__((used)) static inline void iwl_pcie_clear_irq(struct iwl_trans *trans,
          struct msix_entry *entry)
{
 iwl_write32(trans, CSR_MSIX_AUTOMASK_ST_AD, BIT(entry->entry));
}
