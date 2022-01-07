
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mfd_cell {int dummy; } ;
struct TYPE_6__ {int reset; } ;
struct madera {int num_core_supplies; int type; unsigned int rev; int dcvdd; TYPE_1__* core_supplies; struct device* dev; int regmap; int type_name; TYPE_3__ pdata; int regmap_32bit; int dapm_ptr_lock; int notifier; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct mfd_cell supply; } ;


 int ARRAY_SIZE (struct mfd_cell const*) ;
 int BLOCKING_INIT_NOTIFIER_HEAD (int *) ;
 int CONFIG_MFD_CS47L15 ;
 int CONFIG_MFD_CS47L35 ;
 int CONFIG_MFD_CS47L85 ;
 int CONFIG_MFD_CS47L90 ;
 int CONFIG_MFD_CS47L92 ;
 int EINVAL ;
 int ENODEV ;
 int IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int MADERA_32KZ_MCLK2 ;
 int MADERA_CLK_32K_ENA ;
 int MADERA_CLK_32K_ENA_MASK ;
 int MADERA_CLK_32K_SRC_MASK ;
 int MADERA_CLOCK_32K_1 ;
 int MADERA_HARDWARE_REVISION ;
 unsigned int MADERA_HW_REVISION_MASK ;
 int MADERA_SOFTWARE_RESET ;
 int PLATFORM_DEVID_NONE ;
 int PTR_ERR (int ) ;

 struct mfd_cell const* cs47l15_devs ;
 int cs47l15_patch (struct madera*) ;
 struct mfd_cell const* cs47l35_devs ;
 int cs47l35_patch (struct madera*) ;
 struct mfd_cell const* cs47l85_devs ;
 int cs47l85_patch (struct madera*) ;
 struct mfd_cell const* cs47l90_devs ;
 int cs47l90_patch (struct madera*) ;
 struct mfd_cell const* cs47l92_devs ;
 int cs47l92_patch (struct madera*) ;
 int dev_err (struct device*,char*,int,...) ;
 scalar_t__ dev_get_platdata (struct device*) ;
 int dev_info (struct device*,char*,int ,unsigned int) ;
 int dev_set_drvdata (struct device*,struct madera*) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_1__*) ;
 struct mfd_cell const* madera_core_supplies ;
 int madera_disable_hard_reset (struct madera*) ;
 int madera_enable_hard_reset (struct madera*) ;
 int madera_get_reset_gpio (struct madera*) ;
 struct mfd_cell const* madera_ldo1_devs ;
 int madera_set_micbias_info (struct madera*) ;
 int madera_soft_reset (struct madera*) ;
 int madera_wait_for_boot (struct madera*) ;
 int memcpy (TYPE_3__*,scalar_t__,int) ;
 int mfd_add_devices (struct device*,int ,struct mfd_cell const*,int,int *,int ,int *) ;
 int mfd_remove_devices (struct device*) ;
 int mutex_init (int *) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int regcache_cache_only (int ,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regulator_bulk_disable (int,TYPE_1__*) ;
 int regulator_bulk_enable (int,TYPE_1__*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_get (struct device*,char*) ;
 int regulator_put (int ) ;

int madera_dev_init(struct madera *madera)
{
 struct device *dev = madera->dev;
 unsigned int hwid;
 int (*patch_fn)(struct madera *) = ((void*)0);
 const struct mfd_cell *mfd_devs;
 int n_devs = 0;
 int i, ret;

 dev_set_drvdata(madera->dev, madera);
 BLOCKING_INIT_NOTIFIER_HEAD(&madera->notifier);
 mutex_init(&madera->dapm_ptr_lock);

 madera_set_micbias_info(madera);





 if (dev_get_platdata(madera->dev)) {
  memcpy(&madera->pdata, dev_get_platdata(madera->dev),
         sizeof(madera->pdata));
 }

 ret = madera_get_reset_gpio(madera);
 if (ret)
  return ret;

 regcache_cache_only(madera->regmap, 1);
 regcache_cache_only(madera->regmap_32bit, 1);

 for (i = 0; i < ARRAY_SIZE(madera_core_supplies); i++)
  madera->core_supplies[i].supply = madera_core_supplies[i];

 madera->num_core_supplies = ARRAY_SIZE(madera_core_supplies);






 switch (madera->type) {
 case 140:
 case 138:
 case 134:
 case 132:
 case 141:
 case 131:
 case 129:
  break;
 case 136:
 case 128:
  ret = mfd_add_devices(madera->dev, PLATFORM_DEVID_NONE,
          madera_ldo1_devs,
          ARRAY_SIZE(madera_ldo1_devs),
          ((void*)0), 0, ((void*)0));
  if (ret) {
   dev_err(dev, "Failed to add LDO1 child: %d\n", ret);
   return ret;
  }
  break;
 default:

  dev_err(madera->dev, "Unknown device type %d\n", madera->type);
  return -ENODEV;
 }

 ret = devm_regulator_bulk_get(dev, madera->num_core_supplies,
          madera->core_supplies);
 if (ret) {
  dev_err(dev, "Failed to request core supplies: %d\n", ret);
  goto err_devs;
 }






 madera->dcvdd = regulator_get(madera->dev, "DCVDD");
 if (IS_ERR(madera->dcvdd)) {
  ret = PTR_ERR(madera->dcvdd);
  dev_err(dev, "Failed to request DCVDD: %d\n", ret);
  goto err_devs;
 }

 ret = regulator_bulk_enable(madera->num_core_supplies,
        madera->core_supplies);
 if (ret) {
  dev_err(dev, "Failed to enable core supplies: %d\n", ret);
  goto err_dcvdd;
 }

 ret = regulator_enable(madera->dcvdd);
 if (ret) {
  dev_err(dev, "Failed to enable DCVDD: %d\n", ret);
  goto err_enable;
 }

 madera_disable_hard_reset(madera);

 regcache_cache_only(madera->regmap, 0);
 regcache_cache_only(madera->regmap_32bit, 0);





 ret = regmap_read(madera->regmap, MADERA_SOFTWARE_RESET, &hwid);
 if (ret) {
  dev_err(dev, "Failed to read ID register: %d\n", ret);
  goto err_reset;
 }

 switch (hwid) {
 case 139:
  if (IS_ENABLED(CONFIG_MFD_CS47L15)) {
   switch (madera->type) {
   case 140:
    patch_fn = &cs47l15_patch;
    mfd_devs = cs47l15_devs;
    n_devs = ARRAY_SIZE(cs47l15_devs);
    break;
   default:
    break;
   }
  }
  break;
 case 137:
  if (IS_ENABLED(CONFIG_MFD_CS47L35)) {
   switch (madera->type) {
   case 138:
    patch_fn = cs47l35_patch;
    mfd_devs = cs47l35_devs;
    n_devs = ARRAY_SIZE(cs47l35_devs);
    break;
   default:
    break;
   }
  }
  break;
 case 135:
  if (IS_ENABLED(CONFIG_MFD_CS47L85)) {
   switch (madera->type) {
   case 136:
   case 128:
    patch_fn = cs47l85_patch;
    mfd_devs = cs47l85_devs;
    n_devs = ARRAY_SIZE(cs47l85_devs);
    break;
   default:
    break;
   }
  }
  break;
 case 133:
  if (IS_ENABLED(CONFIG_MFD_CS47L90)) {
   switch (madera->type) {
   case 134:
   case 132:
    patch_fn = cs47l90_patch;
    mfd_devs = cs47l90_devs;
    n_devs = ARRAY_SIZE(cs47l90_devs);
    break;
   default:
    break;
   }
  }
  break;
 case 130:
  if (IS_ENABLED(CONFIG_MFD_CS47L92)) {
   switch (madera->type) {
   case 141:
   case 131:
   case 129:
    patch_fn = cs47l92_patch;
    mfd_devs = cs47l92_devs;
    n_devs = ARRAY_SIZE(cs47l92_devs);
    break;
   default:
    break;
   }
  }
  break;
 default:
  dev_err(madera->dev, "Unknown device ID: %x\n", hwid);
  ret = -EINVAL;
  goto err_reset;
 }

 if (!n_devs) {
  dev_err(madera->dev, "Device ID 0x%x not a %s\n", hwid,
   madera->type_name);
  ret = -ENODEV;
  goto err_reset;
 }





 if (!madera->pdata.reset) {
  ret = madera_soft_reset(madera);
  if (ret)
   goto err_reset;
 }

 ret = madera_wait_for_boot(madera);
 if (ret) {
  dev_err(madera->dev, "Device failed initial boot: %d\n", ret);
  goto err_reset;
 }

 ret = regmap_read(madera->regmap, MADERA_HARDWARE_REVISION,
     &madera->rev);
 if (ret) {
  dev_err(dev, "Failed to read revision register: %d\n", ret);
  goto err_reset;
 }
 madera->rev &= MADERA_HW_REVISION_MASK;

 dev_info(dev, "%s silicon revision %d\n", madera->type_name,
   madera->rev);


 if (patch_fn) {
  ret = patch_fn(madera);
  if (ret) {
   dev_err(madera->dev, "Failed to apply patch %d\n", ret);
   goto err_reset;
  }
 }


 ret = regmap_update_bits(madera->regmap,
   MADERA_CLOCK_32K_1,
   MADERA_CLK_32K_ENA_MASK | MADERA_CLK_32K_SRC_MASK,
   MADERA_CLK_32K_ENA | MADERA_32KZ_MCLK2);
 if (ret) {
  dev_err(madera->dev, "Failed to init 32k clock: %d\n", ret);
  goto err_reset;
 }

 pm_runtime_set_active(madera->dev);
 pm_runtime_enable(madera->dev);
 pm_runtime_set_autosuspend_delay(madera->dev, 100);
 pm_runtime_use_autosuspend(madera->dev);


 ret = mfd_add_devices(madera->dev, PLATFORM_DEVID_NONE,
         mfd_devs, n_devs,
         ((void*)0), 0, ((void*)0));
 if (ret) {
  dev_err(madera->dev, "Failed to add subdevices: %d\n", ret);
  goto err_pm_runtime;
 }

 return 0;

err_pm_runtime:
 pm_runtime_disable(madera->dev);
err_reset:
 madera_enable_hard_reset(madera);
 regulator_disable(madera->dcvdd);
err_enable:
 regulator_bulk_disable(madera->num_core_supplies,
          madera->core_supplies);
err_dcvdd:
 regulator_put(madera->dcvdd);
err_devs:
 mfd_remove_devices(dev);

 return ret;
}
