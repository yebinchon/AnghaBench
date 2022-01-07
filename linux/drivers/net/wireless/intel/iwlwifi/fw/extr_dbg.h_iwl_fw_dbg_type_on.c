
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iwl_fw_runtime {TYPE_2__* fw; } ;
struct TYPE_3__ {int dump_mask; } ;
struct TYPE_4__ {TYPE_1__ dbg; } ;


 int BIT (int ) ;

__attribute__((used)) static inline bool iwl_fw_dbg_type_on(struct iwl_fw_runtime *fwrt, u32 type)
{
 return (fwrt->fw->dbg.dump_mask & BIT(type));
}
