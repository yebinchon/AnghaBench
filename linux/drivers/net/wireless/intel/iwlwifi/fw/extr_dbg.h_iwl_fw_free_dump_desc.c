
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ umac_err_id; scalar_t__* lmac_err_id; int * desc; } ;
struct TYPE_3__ {int num_lmacs; } ;
struct iwl_fw_runtime {TYPE_2__ dump; TYPE_1__ smem_cfg; } ;


 int iwl_dump_desc_assert ;
 int kfree (int *) ;

__attribute__((used)) static inline void iwl_fw_free_dump_desc(struct iwl_fw_runtime *fwrt)
{
 if (fwrt->dump.desc != &iwl_dump_desc_assert)
  kfree(fwrt->dump.desc);
 fwrt->dump.desc = ((void*)0);
 fwrt->dump.lmac_err_id[0] = 0;
 if (fwrt->smem_cfg.num_lmacs > 1)
  fwrt->dump.lmac_err_id[1] = 0;
 fwrt->dump.umac_err_id = 0;
}
