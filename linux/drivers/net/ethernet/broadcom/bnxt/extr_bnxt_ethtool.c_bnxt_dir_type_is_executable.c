
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ bnxt_dir_type_is_ape_bin_format (int ) ;
 scalar_t__ bnxt_dir_type_is_other_exec_format (int ) ;

__attribute__((used)) static bool bnxt_dir_type_is_executable(u16 dir_type)
{
 return bnxt_dir_type_is_ape_bin_format(dir_type) ||
  bnxt_dir_type_is_other_exec_format(dir_type);
}
