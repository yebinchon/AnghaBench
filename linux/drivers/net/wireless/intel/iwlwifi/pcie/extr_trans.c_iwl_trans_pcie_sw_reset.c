
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* csr; } ;
struct TYPE_3__ {int flag_sw_reset; int addr_sw_reset; } ;


 int BIT (int ) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void iwl_trans_pcie_sw_reset(struct iwl_trans *trans)
{

 iwl_set_bit(trans, trans->trans_cfg->csr->addr_sw_reset,
      BIT(trans->trans_cfg->csr->flag_sw_reset));
 usleep_range(5000, 6000);
}
