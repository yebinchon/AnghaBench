
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp {int core; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_IEDR_LEN ;
 int iedr ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int mlxsw_reg_iedr_pack (char*) ;
 int mlxsw_reg_iedr_rec_pack (char*,int ,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;

__attribute__((used)) static int mlxsw_sp2_kvdl_rec_del(struct mlxsw_sp *mlxsw_sp, u8 res_type,
      u16 size, u32 kvdl_index)
{
 char *iedr_pl;
 int err;

 iedr_pl = kmalloc(MLXSW_REG_IEDR_LEN, GFP_KERNEL);
 if (!iedr_pl)
  return -ENOMEM;

 mlxsw_reg_iedr_pack(iedr_pl);
 mlxsw_reg_iedr_rec_pack(iedr_pl, 0, res_type, size, kvdl_index);
 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(iedr), iedr_pl);
 kfree(iedr_pl);
 return err;
}
