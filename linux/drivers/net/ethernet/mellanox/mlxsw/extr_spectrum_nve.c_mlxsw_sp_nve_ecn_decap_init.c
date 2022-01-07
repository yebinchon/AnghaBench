
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;


 int INET_ECN_CE ;
 int INET_ECN_NOT_ECT ;
 int __mlxsw_sp_nve_ecn_decap_init (struct mlxsw_sp*,int,int) ;

__attribute__((used)) static int mlxsw_sp_nve_ecn_decap_init(struct mlxsw_sp *mlxsw_sp)
{
 int i;


 for (i = INET_ECN_NOT_ECT; i <= INET_ECN_CE; i++) {
  int j;


  for (j = INET_ECN_NOT_ECT; j <= INET_ECN_CE; j++) {
   int err;

   err = __mlxsw_sp_nve_ecn_decap_init(mlxsw_sp, i, j);
   if (err)
    return err;
  }
 }

 return 0;
}
