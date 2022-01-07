
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void iwl_trans_pcie ;
struct iwl_trans {scalar_t__ trans_specific; } ;



__attribute__((used)) static inline struct iwl_trans_pcie *
IWL_TRANS_GET_PCIE_TRANS(struct iwl_trans *trans)
{
 return (void *)trans->trans_specific;
}
