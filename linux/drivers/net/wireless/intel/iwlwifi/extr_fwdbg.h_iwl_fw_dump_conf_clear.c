
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conf; } ;
struct iwl_fw_runtime {TYPE_1__ dump; } ;


 int FW_DBG_INVALID ;

__attribute__((used)) static inline void iwl_fw_dump_conf_clear(struct iwl_fw_runtime *fwrt)
{
 fwrt->dump.conf = FW_DBG_INVALID;
}
