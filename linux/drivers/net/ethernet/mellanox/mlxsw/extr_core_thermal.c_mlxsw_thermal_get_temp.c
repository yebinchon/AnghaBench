
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct mlxsw_thermal* devdata; } ;
struct mlxsw_thermal {int trips; int core; TYPE_1__* bus_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_MTMP_LEN ;
 int dev_err (struct device*,char*) ;
 int mlxsw_reg_mtmp_pack (char*,int ,int,int) ;
 int mlxsw_reg_mtmp_unpack (char*,int*,int *,int *) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_thermal_tz_score_update (struct mlxsw_thermal*,struct thermal_zone_device*,int ,int) ;
 int mtmp ;

__attribute__((used)) static int mlxsw_thermal_get_temp(struct thermal_zone_device *tzdev,
      int *p_temp)
{
 struct mlxsw_thermal *thermal = tzdev->devdata;
 struct device *dev = thermal->bus_info->dev;
 char mtmp_pl[MLXSW_REG_MTMP_LEN];
 int temp;
 int err;

 mlxsw_reg_mtmp_pack(mtmp_pl, 0, 0, 0);

 err = mlxsw_reg_query(thermal->core, MLXSW_REG(mtmp), mtmp_pl);
 if (err) {
  dev_err(dev, "Failed to query temp sensor\n");
  return err;
 }
 mlxsw_reg_mtmp_unpack(mtmp_pl, &temp, ((void*)0), ((void*)0));
 if (temp > 0)
  mlxsw_thermal_tz_score_update(thermal, tzdev, thermal->trips,
           temp);

 *p_temp = temp;
 return 0;
}
