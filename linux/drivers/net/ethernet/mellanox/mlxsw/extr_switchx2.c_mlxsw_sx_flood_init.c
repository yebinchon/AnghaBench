
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sx {int core; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLXSW_PORT_CPU_PORT ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID ;
 int MLXSW_REG_SFGC_LEN ;
 int MLXSW_REG_SFGC_TABLE_TYPE_SINGLE ;
 int MLXSW_REG_SFGC_TYPE_BROADCAST ;
 int MLXSW_REG_SFGC_TYPE_UNKNOWN_UNICAST ;
 int MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_IPV4 ;
 int MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_IPV6 ;
 int MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_NON_IP ;
 int MLXSW_REG_SFTR_LEN ;
 int MLXSW_REG_SGCR_LEN ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int mlxsw_reg_sfgc_pack (char*,int ,int ,int ,int ) ;
 int mlxsw_reg_sftr_pack (char*,int ,int ,int ,int ,int ,int) ;
 int mlxsw_reg_sgcr_pack (char*,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int sfgc ;
 int sftr ;
 int sgcr ;

__attribute__((used)) static int mlxsw_sx_flood_init(struct mlxsw_sx *mlxsw_sx)
{
 char sfgc_pl[MLXSW_REG_SFGC_LEN];
 char sgcr_pl[MLXSW_REG_SGCR_LEN];
 char *sftr_pl;
 int err;


 sftr_pl = kmalloc(MLXSW_REG_SFTR_LEN, GFP_KERNEL);
 if (!sftr_pl)
  return -ENOMEM;
 mlxsw_reg_sftr_pack(sftr_pl, 0, 0, MLXSW_REG_SFGC_TABLE_TYPE_SINGLE, 0,
       MLXSW_PORT_CPU_PORT, 1);
 err = mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(sftr), sftr_pl);
 kfree(sftr_pl);
 if (err)
  return err;


 mlxsw_reg_sfgc_pack(sfgc_pl,
       MLXSW_REG_SFGC_TYPE_UNKNOWN_UNICAST,
       MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID,
       MLXSW_REG_SFGC_TABLE_TYPE_SINGLE,
       0);
 err = mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(sfgc), sfgc_pl);
 if (err)
  return err;

 mlxsw_reg_sfgc_pack(sfgc_pl,
       MLXSW_REG_SFGC_TYPE_BROADCAST,
       MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID,
       MLXSW_REG_SFGC_TABLE_TYPE_SINGLE,
       0);
 err = mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(sfgc), sfgc_pl);
 if (err)
  return err;

 mlxsw_reg_sfgc_pack(sfgc_pl,
       MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_NON_IP,
       MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID,
       MLXSW_REG_SFGC_TABLE_TYPE_SINGLE,
       0);
 err = mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(sfgc), sfgc_pl);
 if (err)
  return err;

 mlxsw_reg_sfgc_pack(sfgc_pl,
       MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_IPV6,
       MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID,
       MLXSW_REG_SFGC_TABLE_TYPE_SINGLE,
       0);
 err = mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(sfgc), sfgc_pl);
 if (err)
  return err;

 mlxsw_reg_sfgc_pack(sfgc_pl,
       MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_IPV4,
       MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID,
       MLXSW_REG_SFGC_TABLE_TYPE_SINGLE,
       0);
 err = mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(sfgc), sfgc_pl);
 if (err)
  return err;

 mlxsw_reg_sgcr_pack(sgcr_pl, 1);
 return mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(sgcr), sgcr_pl);
}
