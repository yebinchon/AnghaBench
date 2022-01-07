
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct thermal_zone_device {struct mlxsw_thermal_module* devdata; } ;
struct mlxsw_thermal_module {int trips; scalar_t__ module; struct mlxsw_thermal* parent; } ;
struct mlxsw_thermal {int core; } ;


 int MLXSW_REG (int ) ;
 scalar_t__ MLXSW_REG_MTMP_GBOX_INDEX_MIN ;
 int MLXSW_REG_MTMP_LEN ;
 int mlxsw_reg_mtmp_pack (char*,scalar_t__,int,int) ;
 int mlxsw_reg_mtmp_unpack (char*,int*,int *,int *) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_thermal_tz_score_update (struct mlxsw_thermal*,struct thermal_zone_device*,int ,int) ;
 int mtmp ;

__attribute__((used)) static int mlxsw_thermal_gearbox_temp_get(struct thermal_zone_device *tzdev,
       int *p_temp)
{
 struct mlxsw_thermal_module *tz = tzdev->devdata;
 struct mlxsw_thermal *thermal = tz->parent;
 char mtmp_pl[MLXSW_REG_MTMP_LEN];
 u16 index;
 int temp;
 int err;

 index = MLXSW_REG_MTMP_GBOX_INDEX_MIN + tz->module;
 mlxsw_reg_mtmp_pack(mtmp_pl, index, 0, 0);

 err = mlxsw_reg_query(thermal->core, MLXSW_REG(mtmp), mtmp_pl);
 if (err)
  return err;

 mlxsw_reg_mtmp_unpack(mtmp_pl, &temp, ((void*)0), ((void*)0));
 if (temp > 0)
  mlxsw_thermal_tz_score_update(thermal, tzdev, tz->trips, temp);

 *p_temp = temp;
 return 0;
}
