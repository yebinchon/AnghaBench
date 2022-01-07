
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct mlxsw_thermal_module* devdata; } ;
struct mlxsw_thermal_module {int trips; scalar_t__ module; struct mlxsw_thermal* parent; } ;
struct mlxsw_thermal {int core; TYPE_1__* bus_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_MTMP_LEN ;
 scalar_t__ MLXSW_REG_MTMP_MODULE_INDEX_MIN ;
 int mlxsw_reg_mtmp_pack (char*,scalar_t__,int,int) ;
 int mlxsw_reg_mtmp_unpack (char*,int*,int *,int *) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_thermal_module_trips_update (struct device*,int ,struct mlxsw_thermal_module*) ;
 int mlxsw_thermal_tz_score_update (struct mlxsw_thermal*,struct thermal_zone_device*,int ,int) ;
 int mtmp ;

__attribute__((used)) static int mlxsw_thermal_module_temp_get(struct thermal_zone_device *tzdev,
      int *p_temp)
{
 struct mlxsw_thermal_module *tz = tzdev->devdata;
 struct mlxsw_thermal *thermal = tz->parent;
 struct device *dev = thermal->bus_info->dev;
 char mtmp_pl[MLXSW_REG_MTMP_LEN];
 int temp;
 int err;


 mlxsw_reg_mtmp_pack(mtmp_pl, MLXSW_REG_MTMP_MODULE_INDEX_MIN +
       tz->module, 0, 0);
 err = mlxsw_reg_query(thermal->core, MLXSW_REG(mtmp), mtmp_pl);
 if (err) {



  temp = 0;
  *p_temp = (int) temp;
  return 0;
 }
 mlxsw_reg_mtmp_unpack(mtmp_pl, &temp, ((void*)0), ((void*)0));
 *p_temp = temp;

 if (!temp)
  return 0;


 err = mlxsw_thermal_module_trips_update(dev, thermal->core, tz);
 if (!err && temp > 0)
  mlxsw_thermal_tz_score_update(thermal, tzdev, tz->trips, temp);

 return 0;
}
