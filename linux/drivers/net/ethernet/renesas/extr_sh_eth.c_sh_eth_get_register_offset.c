
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;







 int * sh_eth_offset_fast_rcar ;
 int * sh_eth_offset_fast_rz ;
 int * sh_eth_offset_fast_sh3_sh2 ;
 int * sh_eth_offset_fast_sh4 ;
 int * sh_eth_offset_gigabit ;

__attribute__((used)) static const u16 *sh_eth_get_register_offset(int register_type)
{
 const u16 *reg_offset = ((void*)0);

 switch (register_type) {
 case 128:
  reg_offset = sh_eth_offset_gigabit;
  break;
 case 131:
  reg_offset = sh_eth_offset_fast_rz;
  break;
 case 132:
  reg_offset = sh_eth_offset_fast_rcar;
  break;
 case 129:
  reg_offset = sh_eth_offset_fast_sh4;
  break;
 case 130:
  reg_offset = sh_eth_offset_fast_sh3_sh2;
  break;
 }

 return reg_offset;
}
