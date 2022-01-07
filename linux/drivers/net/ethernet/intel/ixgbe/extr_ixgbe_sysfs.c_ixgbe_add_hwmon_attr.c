
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * sensor; } ;
struct TYPE_8__ {TYPE_1__ thermal_sensor_data; } ;
struct TYPE_9__ {TYPE_2__ mac; } ;
struct ixgbe_adapter {TYPE_5__* ixgbe_hwmon_buff; TYPE_3__ hw; } ;
struct TYPE_12__ {int mode; int name; } ;
struct TYPE_10__ {TYPE_6__ attr; int * store; int show; } ;
struct hwmon_attr {TYPE_4__ dev_attr; int name; TYPE_3__* hw; int * sensor; } ;
struct TYPE_11__ {unsigned int n_hwmon; TYPE_6__** attrs; struct hwmon_attr* hwmon_list; } ;


 int EPERM ;




 int ixgbe_hwmon_show_cautionthresh ;
 int ixgbe_hwmon_show_location ;
 int ixgbe_hwmon_show_maxopthresh ;
 int ixgbe_hwmon_show_temp ;
 int snprintf (int ,int,char*,unsigned int) ;
 int sysfs_attr_init (TYPE_6__*) ;

__attribute__((used)) static int ixgbe_add_hwmon_attr(struct ixgbe_adapter *adapter,
    unsigned int offset, int type) {
 int rc;
 unsigned int n_attr;
 struct hwmon_attr *ixgbe_attr;

 n_attr = adapter->ixgbe_hwmon_buff->n_hwmon;
 ixgbe_attr = &adapter->ixgbe_hwmon_buff->hwmon_list[n_attr];

 switch (type) {
 case 130:
  ixgbe_attr->dev_attr.show = ixgbe_hwmon_show_location;
  snprintf(ixgbe_attr->name, sizeof(ixgbe_attr->name),
    "temp%u_label", offset + 1);
  break;
 case 128:
  ixgbe_attr->dev_attr.show = ixgbe_hwmon_show_temp;
  snprintf(ixgbe_attr->name, sizeof(ixgbe_attr->name),
    "temp%u_input", offset + 1);
  break;
 case 131:
  ixgbe_attr->dev_attr.show = ixgbe_hwmon_show_cautionthresh;
  snprintf(ixgbe_attr->name, sizeof(ixgbe_attr->name),
    "temp%u_max", offset + 1);
  break;
 case 129:
  ixgbe_attr->dev_attr.show = ixgbe_hwmon_show_maxopthresh;
  snprintf(ixgbe_attr->name, sizeof(ixgbe_attr->name),
    "temp%u_crit", offset + 1);
  break;
 default:
  rc = -EPERM;
  return rc;
 }


 ixgbe_attr->sensor =
  &adapter->hw.mac.thermal_sensor_data.sensor[offset];
 ixgbe_attr->hw = &adapter->hw;
 ixgbe_attr->dev_attr.store = ((void*)0);
 ixgbe_attr->dev_attr.attr.mode = 0444;
 ixgbe_attr->dev_attr.attr.name = ixgbe_attr->name;
 sysfs_attr_init(&ixgbe_attr->dev_attr.attr);

 adapter->ixgbe_hwmon_buff->attrs[n_attr] = &ixgbe_attr->dev_attr.attr;

 ++adapter->ixgbe_hwmon_buff->n_hwmon;

 return 0;
}
