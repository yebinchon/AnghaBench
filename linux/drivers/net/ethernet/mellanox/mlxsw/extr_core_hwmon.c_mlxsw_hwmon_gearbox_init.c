
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlxsw_hwmon {int module_sensor_count; TYPE_1__* bus_info; int core; } ;
struct TYPE_2__ {int dev; } ;


 int MLXSW_HWMON_ATTR_TYPE_TEMP ;
 int MLXSW_HWMON_ATTR_TYPE_TEMP_GBOX_LABEL ;
 int MLXSW_HWMON_ATTR_TYPE_TEMP_MAX ;
 int MLXSW_HWMON_ATTR_TYPE_TEMP_RST ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_MGPIR_LEN ;
 int MLXSW_REG_MTMP_GBOX_INDEX_MIN ;
 int MLXSW_REG_MTMP_LEN ;
 int dev_err (int ,char*,int) ;
 int mgpir ;
 int mlxsw_hwmon_attr_add (struct mlxsw_hwmon*,int ,int,int) ;
 int mlxsw_reg_mgpir_pack (char*) ;
 int mlxsw_reg_mgpir_unpack (char*,int*,int *,int *) ;
 int mlxsw_reg_mtmp_pack (char*,int,int,int) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mtmp ;

__attribute__((used)) static int mlxsw_hwmon_gearbox_init(struct mlxsw_hwmon *mlxsw_hwmon)
{
 int index, max_index, sensor_index;
 char mgpir_pl[MLXSW_REG_MGPIR_LEN];
 char mtmp_pl[MLXSW_REG_MTMP_LEN];
 u8 gbox_num;
 int err;

 mlxsw_reg_mgpir_pack(mgpir_pl);
 err = mlxsw_reg_query(mlxsw_hwmon->core, MLXSW_REG(mgpir), mgpir_pl);
 if (err)
  return err;

 mlxsw_reg_mgpir_unpack(mgpir_pl, &gbox_num, ((void*)0), ((void*)0));
 if (!gbox_num)
  return 0;

 index = mlxsw_hwmon->module_sensor_count;
 max_index = mlxsw_hwmon->module_sensor_count + gbox_num;
 while (index < max_index) {
  sensor_index = index % mlxsw_hwmon->module_sensor_count +
          MLXSW_REG_MTMP_GBOX_INDEX_MIN;
  mlxsw_reg_mtmp_pack(mtmp_pl, sensor_index, 1, 1);
  err = mlxsw_reg_write(mlxsw_hwmon->core,
          MLXSW_REG(mtmp), mtmp_pl);
  if (err) {
   dev_err(mlxsw_hwmon->bus_info->dev, "Failed to setup temp sensor number %d\n",
    sensor_index);
   return err;
  }
  mlxsw_hwmon_attr_add(mlxsw_hwmon, MLXSW_HWMON_ATTR_TYPE_TEMP,
         index, index);
  mlxsw_hwmon_attr_add(mlxsw_hwmon,
         MLXSW_HWMON_ATTR_TYPE_TEMP_MAX, index,
         index);
  mlxsw_hwmon_attr_add(mlxsw_hwmon,
         MLXSW_HWMON_ATTR_TYPE_TEMP_RST, index,
         index);
  mlxsw_hwmon_attr_add(mlxsw_hwmon,
         MLXSW_HWMON_ATTR_TYPE_TEMP_GBOX_LABEL,
         index, index);
  index++;
 }

 return 0;
}
