
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sp {int core; } ;


 int INET_ECN_CE ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_TNDEM_LEN ;
 int MLXSW_TRAP_ID_DECAP_ECN0 ;
 int __INET_ECN_decapsulate (int ,int ,int*) ;
 int mlxsw_reg_tndem_pack (char*,int ,int ,int ,int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int tndem ;

__attribute__((used)) static int __mlxsw_sp_nve_ecn_decap_init(struct mlxsw_sp *mlxsw_sp,
      u8 inner_ecn, u8 outer_ecn)
{
 char tndem_pl[MLXSW_REG_TNDEM_LEN];
 bool trap_en, set_ce = 0;
 u8 new_inner_ecn;

 trap_en = !!__INET_ECN_decapsulate(outer_ecn, inner_ecn, &set_ce);
 new_inner_ecn = set_ce ? INET_ECN_CE : inner_ecn;

 mlxsw_reg_tndem_pack(tndem_pl, outer_ecn, inner_ecn, new_inner_ecn,
        trap_en, trap_en ? MLXSW_TRAP_ID_DECAP_ECN0 : 0);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(tndem), tndem_pl);
}
