
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iwl_fw_runtime {int dummy; } ;
struct iwl_fw_ini_region_cfg {int dummy; } ;


 scalar_t__ iwl_ini_txf_iter (struct iwl_fw_runtime*,struct iwl_fw_ini_region_cfg*,scalar_t__) ;

__attribute__((used)) static u32 iwl_dump_ini_txf_ranges(struct iwl_fw_runtime *fwrt,
       struct iwl_fw_ini_region_cfg *reg)
{
 u32 num_of_fifos = 0;

 while (iwl_ini_txf_iter(fwrt, reg, num_of_fifos))
  num_of_fifos++;

 return num_of_fifos;
}
