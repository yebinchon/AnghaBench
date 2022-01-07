
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct iwl_trans {int dummy; } ;
struct TYPE_2__ {scalar_t__ hw_base; } ;


 TYPE_1__* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 iwl_trans_pcie_read32(struct iwl_trans *trans, u32 ofs)
{
 return readl(IWL_TRANS_GET_PCIE_TRANS(trans)->hw_base + ofs);
}
