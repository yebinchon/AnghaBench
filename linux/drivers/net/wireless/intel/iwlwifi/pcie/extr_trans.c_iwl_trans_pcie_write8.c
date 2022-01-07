
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct iwl_trans {int dummy; } ;
struct TYPE_2__ {scalar_t__ hw_base; } ;


 TYPE_1__* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void iwl_trans_pcie_write8(struct iwl_trans *trans, u32 ofs, u8 val)
{
 writeb(val, IWL_TRANS_GET_PCIE_TRANS(trans)->hw_base + ofs);
}
