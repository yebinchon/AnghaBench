
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dest_tlv; } ;
struct iwl_trans {TYPE_1__ dbg; } ;


 scalar_t__ iwl_trans_dbg_ini_valid (struct iwl_trans*) ;

__attribute__((used)) static inline bool iwl_pcie_dbg_on(struct iwl_trans *trans)
{
 return (trans->dbg.dest_tlv || iwl_trans_dbg_ini_valid(trans));
}
