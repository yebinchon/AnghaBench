
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* sensor; } ;
struct TYPE_8__ {scalar_t__ (* init_thermal_sensor_thresh ) (TYPE_6__*) ;} ;
struct TYPE_11__ {TYPE_3__ thermal_sensor_data; TYPE_1__ ops; } ;
struct TYPE_13__ {TYPE_4__ mac; } ;
struct ixgbe_adapter {TYPE_5__* pdev; TYPE_6__ hw; struct hwmon_buff* ixgbe_hwmon_buff; } ;
struct TYPE_14__ {int attrs; } ;
struct hwmon_buff {TYPE_7__** groups; int attrs; TYPE_7__ group; } ;
struct device {int dummy; } ;
struct TYPE_12__ {int dev; } ;
struct TYPE_9__ {scalar_t__ location; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct device*) ;
 int IXGBE_HWMON_TYPE_CAUTION ;
 int IXGBE_HWMON_TYPE_LOC ;
 int IXGBE_HWMON_TYPE_MAX ;
 int IXGBE_HWMON_TYPE_TEMP ;
 unsigned int IXGBE_MAX_SENSORS ;
 int PTR_ERR (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (int *,char*,struct hwmon_buff*,TYPE_7__**) ;
 struct hwmon_buff* devm_kzalloc (int *,int,int ) ;
 int ixgbe_add_hwmon_attr (struct ixgbe_adapter*,unsigned int,int ) ;
 scalar_t__ stub1 (TYPE_6__*) ;

int ixgbe_sysfs_init(struct ixgbe_adapter *adapter)
{
 struct hwmon_buff *ixgbe_hwmon;
 struct device *hwmon_dev;
 unsigned int i;
 int rc = 0;


 if (adapter->hw.mac.ops.init_thermal_sensor_thresh == ((void*)0)) {
  goto exit;
 }


 if (adapter->hw.mac.ops.init_thermal_sensor_thresh(&adapter->hw))
  goto exit;

 ixgbe_hwmon = devm_kzalloc(&adapter->pdev->dev, sizeof(*ixgbe_hwmon),
       GFP_KERNEL);
 if (ixgbe_hwmon == ((void*)0)) {
  rc = -ENOMEM;
  goto exit;
 }
 adapter->ixgbe_hwmon_buff = ixgbe_hwmon;

 for (i = 0; i < IXGBE_MAX_SENSORS; i++) {




  if (adapter->hw.mac.thermal_sensor_data.sensor[i].location == 0)
   continue;


  rc = ixgbe_add_hwmon_attr(adapter, i, IXGBE_HWMON_TYPE_CAUTION);
  if (rc)
   goto exit;
  rc = ixgbe_add_hwmon_attr(adapter, i, IXGBE_HWMON_TYPE_LOC);
  if (rc)
   goto exit;
  rc = ixgbe_add_hwmon_attr(adapter, i, IXGBE_HWMON_TYPE_TEMP);
  if (rc)
   goto exit;
  rc = ixgbe_add_hwmon_attr(adapter, i, IXGBE_HWMON_TYPE_MAX);
  if (rc)
   goto exit;
 }

 ixgbe_hwmon->groups[0] = &ixgbe_hwmon->group;
 ixgbe_hwmon->group.attrs = ixgbe_hwmon->attrs;

 hwmon_dev = devm_hwmon_device_register_with_groups(&adapter->pdev->dev,
          "ixgbe",
          ixgbe_hwmon,
          ixgbe_hwmon->groups);
 if (IS_ERR(hwmon_dev))
  rc = PTR_ERR(hwmon_dev);
exit:
 return rc;
}
