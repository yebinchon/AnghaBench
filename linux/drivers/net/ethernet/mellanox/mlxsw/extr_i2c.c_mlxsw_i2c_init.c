
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_res {int dummy; } ;
struct TYPE_3__ {int subminor; int minor; int major; } ;
struct TYPE_4__ {TYPE_1__ fw_rev; } ;
struct mlxsw_i2c {TYPE_2__ bus_info; struct mlxsw_core* core; } ;
struct mlxsw_core {int dummy; } ;
struct mlxsw_config_profile {int dummy; } ;


 int ENOMEM ;
 char* mlxsw_cmd_mbox_alloc () ;
 int mlxsw_cmd_mbox_free (char*) ;
 int mlxsw_cmd_mbox_query_fw_fw_rev_major_get (char*) ;
 int mlxsw_cmd_mbox_query_fw_fw_rev_minor_get (char*) ;
 int mlxsw_cmd_mbox_query_fw_fw_rev_subminor_get (char*) ;
 int mlxsw_cmd_query_fw (struct mlxsw_core*,char*) ;
 int mlxsw_core_resources_query (struct mlxsw_core*,char*,struct mlxsw_res*) ;

__attribute__((used)) static int
mlxsw_i2c_init(void *bus_priv, struct mlxsw_core *mlxsw_core,
        const struct mlxsw_config_profile *profile,
        struct mlxsw_res *res)
{
 struct mlxsw_i2c *mlxsw_i2c = bus_priv;
 char *mbox;
 int err;

 mlxsw_i2c->core = mlxsw_core;

 mbox = mlxsw_cmd_mbox_alloc();
 if (!mbox)
  return -ENOMEM;

 err = mlxsw_cmd_query_fw(mlxsw_core, mbox);
 if (err)
  goto mbox_put;

 mlxsw_i2c->bus_info.fw_rev.major =
  mlxsw_cmd_mbox_query_fw_fw_rev_major_get(mbox);
 mlxsw_i2c->bus_info.fw_rev.minor =
  mlxsw_cmd_mbox_query_fw_fw_rev_minor_get(mbox);
 mlxsw_i2c->bus_info.fw_rev.subminor =
  mlxsw_cmd_mbox_query_fw_fw_rev_subminor_get(mbox);

 err = mlxsw_core_resources_query(mlxsw_core, mbox, res);

mbox_put:
 mlxsw_cmd_mbox_free(mbox);
 return err;
}
