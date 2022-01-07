
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sp {int core; } ;


 int INET_ECN_CE ;
 int INET_ECN_NOT_ECT ;
 int INET_ECN_encapsulate (int ,int) ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_TNEEM_LEN ;
 int mlxsw_reg_tneem_pack (char*,int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int tneem ;

__attribute__((used)) static int mlxsw_sp_nve_ecn_encap_init(struct mlxsw_sp *mlxsw_sp)
{
 int i;


 for (i = INET_ECN_NOT_ECT; i <= INET_ECN_CE; i++) {
  u8 outer_ecn = INET_ECN_encapsulate(0, i);
  char tneem_pl[MLXSW_REG_TNEEM_LEN];
  int err;

  mlxsw_reg_tneem_pack(tneem_pl, i, outer_ecn);
  err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(tneem),
          tneem_pl);
  if (err)
   return err;
 }

 return 0;
}
