
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlxsw_sp_flood_table {int table_type; int table_index; } ;
struct mlxsw_sp_fid_ops {int (* flood_index ) (struct mlxsw_sp_fid*) ;} ;
struct mlxsw_sp_fid_family {TYPE_1__* mlxsw_sp; int flood_tables; struct mlxsw_sp_fid_ops* ops; } ;
struct mlxsw_sp_fid {struct mlxsw_sp_fid_family* fid_family; } ;
typedef enum mlxsw_sp_flood_type { ____Placeholder_mlxsw_sp_flood_type } mlxsw_sp_flood_type ;
struct TYPE_2__ {int core; } ;


 int EINVAL ;
 int ENOMEM ;
 int ESRCH ;
 int GFP_KERNEL ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_SFTR_LEN ;
 scalar_t__ WARN_ON (int) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int mlxsw_reg_sftr_pack (char*,int ,int ,int ,int,int ,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 struct mlxsw_sp_flood_table* mlxsw_sp_fid_flood_table_lookup (struct mlxsw_sp_fid*,int) ;
 int sftr ;
 int stub1 (struct mlxsw_sp_fid*) ;

int mlxsw_sp_fid_flood_set(struct mlxsw_sp_fid *fid,
      enum mlxsw_sp_flood_type packet_type, u8 local_port,
      bool member)
{
 struct mlxsw_sp_fid_family *fid_family = fid->fid_family;
 const struct mlxsw_sp_fid_ops *ops = fid_family->ops;
 const struct mlxsw_sp_flood_table *flood_table;
 char *sftr_pl;
 int err;

 if (WARN_ON(!fid_family->flood_tables || !ops->flood_index))
  return -EINVAL;

 flood_table = mlxsw_sp_fid_flood_table_lookup(fid, packet_type);
 if (!flood_table)
  return -ESRCH;

 sftr_pl = kmalloc(MLXSW_REG_SFTR_LEN, GFP_KERNEL);
 if (!sftr_pl)
  return -ENOMEM;

 mlxsw_reg_sftr_pack(sftr_pl, flood_table->table_index,
       ops->flood_index(fid), flood_table->table_type, 1,
       local_port, member);
 err = mlxsw_reg_write(fid_family->mlxsw_sp->core, MLXSW_REG(sftr),
         sftr_pl);
 kfree(sftr_pl);
 return err;
}
