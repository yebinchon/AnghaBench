
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;
typedef int __be16 ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_MPRS_LEN ;
 int be16_to_cpu (int ) ;
 int mlxsw_reg_mprs_pack (char*,unsigned int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mprs ;

__attribute__((used)) static int __mlxsw_sp_nve_parsing_set(struct mlxsw_sp *mlxsw_sp,
          unsigned int parsing_depth,
          __be16 udp_dport)
{
 char mprs_pl[MLXSW_REG_MPRS_LEN];

 mlxsw_reg_mprs_pack(mprs_pl, parsing_depth, be16_to_cpu(udp_dport));
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(mprs), mprs_pl);
}
