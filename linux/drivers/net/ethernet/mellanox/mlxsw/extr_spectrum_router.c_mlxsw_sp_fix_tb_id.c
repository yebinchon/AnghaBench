
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ RT_TABLE_DEFAULT ;
 scalar_t__ RT_TABLE_LOCAL ;
 scalar_t__ RT_TABLE_MAIN ;

__attribute__((used)) static u32 mlxsw_sp_fix_tb_id(u32 tb_id)
{

 if (tb_id == RT_TABLE_LOCAL || tb_id == RT_TABLE_DEFAULT)
  tb_id = RT_TABLE_MAIN;
 return tb_id;
}
