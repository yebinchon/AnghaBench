
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_fw_runtime {int dummy; } ;
struct iwl_fw_ini_region_cfg {int dummy; } ;
struct TYPE_2__ {int version; } ;
struct iwl_fw_ini_error_dump {void* ranges; TYPE_1__ header; } ;


 int IWL_INI_DUMP_VER ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void *iwl_dump_ini_mem_fill_header(struct iwl_fw_runtime *fwrt,
       struct iwl_fw_ini_region_cfg *reg,
       void *data)
{
 struct iwl_fw_ini_error_dump *dump = data;

 dump->header.version = cpu_to_le32(IWL_INI_DUMP_VER);

 return dump->ranges;
}
