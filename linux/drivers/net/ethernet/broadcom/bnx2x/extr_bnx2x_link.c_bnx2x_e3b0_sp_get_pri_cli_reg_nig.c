
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int bnx2x_e3b0_sp_get_pri_cli_reg (int const,int const,int const,int const,int) ;

__attribute__((used)) static u64 bnx2x_e3b0_sp_get_pri_cli_reg_nig(const u8 cos, const u8 pri_set)
{

 const u8 nig_cos_offset = 3;
 const u8 nig_pri_offset = 3;

 return bnx2x_e3b0_sp_get_pri_cli_reg(cos, nig_cos_offset, pri_set,
  nig_pri_offset, 4);

}
