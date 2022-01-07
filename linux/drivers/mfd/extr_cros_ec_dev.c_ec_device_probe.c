
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct cros_ec_platform {int ec_name; int cmd_offset; } ;
struct TYPE_14__ {int release; struct device* parent; int * class; } ;
struct cros_ec_dev {unsigned int* features; TYPE_2__ class_dev; struct device* dev; TYPE_7__* ec_dev; int cmd_offset; } ;
struct TYPE_16__ {TYPE_1__* dev; } ;
struct TYPE_15__ {int num_cells; int name; struct TYPE_15__* mfd_cells; int id; int desc; } ;
struct TYPE_13__ {struct device_node* of_node; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int EC_FEATURE_MOTION_SENSE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cros_class ;
 int cros_ec_accel_legacy_register (struct cros_ec_dev*) ;
 scalar_t__ cros_ec_check_features (struct cros_ec_dev*,int ) ;
 int cros_ec_class_release ;
 TYPE_3__* cros_ec_platform_cells ;
 int cros_ec_sensors_register (struct cros_ec_dev*) ;
 TYPE_3__* cros_ec_vbc_cells ;
 TYPE_3__* cros_mcu_devices ;
 TYPE_3__* cros_subdevices ;
 int dev_err (struct device*,char*,int,...) ;
 TYPE_7__* dev_get_drvdata (int ) ;
 struct cros_ec_platform* dev_get_platdata (struct device*) ;
 int dev_info (struct device*,char*,int ) ;
 int dev_set_drvdata (struct device*,struct cros_ec_dev*) ;
 int dev_set_name (TYPE_2__*,char*,int ) ;
 int dev_warn (struct device*,char*,int) ;
 int device_add (TYPE_2__*) ;
 int device_initialize (TYPE_2__*) ;
 struct cros_ec_dev* kzalloc (int,int ) ;
 int mfd_add_hotplug_devices (struct device*,TYPE_3__*,int) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int put_device (TYPE_2__*) ;

__attribute__((used)) static int ec_device_probe(struct platform_device *pdev)
{
 int retval = -ENOMEM;
 struct device_node *node;
 struct device *dev = &pdev->dev;
 struct cros_ec_platform *ec_platform = dev_get_platdata(dev);
 struct cros_ec_dev *ec = kzalloc(sizeof(*ec), GFP_KERNEL);
 int i;

 if (!ec)
  return retval;

 dev_set_drvdata(dev, ec);
 ec->ec_dev = dev_get_drvdata(dev->parent);
 ec->dev = dev;
 ec->cmd_offset = ec_platform->cmd_offset;
 ec->features[0] = -1U;
 ec->features[1] = -1U;
 device_initialize(&ec->class_dev);

 for (i = 0; i < ARRAY_SIZE(cros_mcu_devices); i++) {




  if (cros_ec_check_features(ec, cros_mcu_devices[i].id)) {
   dev_info(dev, "CrOS %s MCU detected\n",
     cros_mcu_devices[i].desc);




   ec_platform->ec_name = cros_mcu_devices[i].name;
   break;
  }
 }




 ec->class_dev.class = &cros_class;
 ec->class_dev.parent = dev;
 ec->class_dev.release = cros_ec_class_release;

 retval = dev_set_name(&ec->class_dev, "%s", ec_platform->ec_name);
 if (retval) {
  dev_err(dev, "dev_set_name failed => %d\n", retval);
  goto failed;
 }

 retval = device_add(&ec->class_dev);
 if (retval)
  goto failed;


 if (cros_ec_check_features(ec, EC_FEATURE_MOTION_SENSE))
  cros_ec_sensors_register(ec);
 else

  cros_ec_accel_legacy_register(ec);





 for (i = 0; i < ARRAY_SIZE(cros_subdevices); i++) {
  if (cros_ec_check_features(ec, cros_subdevices[i].id)) {
   retval = mfd_add_hotplug_devices(ec->dev,
      cros_subdevices[i].mfd_cells,
      cros_subdevices[i].num_cells);
   if (retval)
    dev_err(ec->dev,
     "failed to add %s subdevice: %d\n",
     cros_subdevices[i].mfd_cells->name,
     retval);
  }
 }





 retval = mfd_add_hotplug_devices(ec->dev, cros_ec_platform_cells,
      ARRAY_SIZE(cros_ec_platform_cells));
 if (retval)
  dev_warn(ec->dev,
    "failed to add cros-ec platform devices: %d\n",
    retval);


 node = ec->ec_dev->dev->of_node;
 if (of_property_read_bool(node, "google,has-vbc-nvram")) {
  retval = mfd_add_hotplug_devices(ec->dev, cros_ec_vbc_cells,
      ARRAY_SIZE(cros_ec_vbc_cells));
  if (retval)
   dev_warn(ec->dev, "failed to add VBC devices: %d\n",
     retval);
 }

 return 0;

failed:
 put_device(&ec->class_dev);
 return retval;
}
