
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int status; } ;


 int STATUS_TPOWER_PMI ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void iwl_trans_pcie_set_pmi(struct iwl_trans *trans, bool state)
{
 if (state)
  set_bit(STATUS_TPOWER_PMI, &trans->status);
 else
  clear_bit(STATUS_TPOWER_PMI, &trans->status);
}
