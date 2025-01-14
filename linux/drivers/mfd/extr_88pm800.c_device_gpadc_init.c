
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct pm80x_subchip {struct regmap* regmap_gpadc; } ;
struct pm80x_platform_data {scalar_t__ batt_det; } ;
struct pm80x_chip {int dev; struct pm80x_subchip* subchip; } ;


 int EINVAL ;
 int PM800_GPADC_GP_BIAS_EN0 ;
 int PM800_GPADC_GP_BIAS_EN1 ;
 int PM800_GPADC_GP_BIAS_EN2 ;
 int PM800_GPADC_GP_BIAS_EN3 ;
 int PM800_GPADC_MEAS_EN1 ;
 int PM800_GPADC_MEAS_EN2 ;
 int PM800_GPADC_MISC_CONFIG2 ;
 int PM800_GPADC_MISC_GPFSM_EN ;
 int PM800_GP_BIAS_ENA1 ;
 int PM800_MEAS_EN1_VBAT ;
 int PM800_MEAS_EN2_RFTMP ;
 int PM800_MEAS_GP0_EN ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static int device_gpadc_init(struct pm80x_chip *chip,
           struct pm80x_platform_data *pdata)
{
 struct pm80x_subchip *subchip = chip->subchip;
 struct regmap *map = subchip->regmap_gpadc;
 int data = 0, mask = 0, ret = 0;

 if (!map) {
  dev_warn(chip->dev,
    "Warning: gpadc regmap is not available!\n");
  return -EINVAL;
 }




 ret = regmap_update_bits(map,
     PM800_GPADC_MISC_CONFIG2,
     PM800_GPADC_MISC_GPFSM_EN,
     PM800_GPADC_MISC_GPFSM_EN);
 if (ret < 0)
  goto out;







 ret = regmap_update_bits(map, PM800_GPADC_MEAS_EN1,
     PM800_MEAS_EN1_VBAT, PM800_MEAS_EN1_VBAT);
 if (ret < 0)
  goto out;
 ret = regmap_update_bits(map, PM800_GPADC_MEAS_EN2,
     (PM800_MEAS_EN2_RFTMP | PM800_MEAS_GP0_EN),
     (PM800_MEAS_EN2_RFTMP | PM800_MEAS_GP0_EN));
 if (ret < 0)
  goto out;







 mask = (PM800_GPADC_GP_BIAS_EN0 | PM800_GPADC_GP_BIAS_EN1 |
  PM800_GPADC_GP_BIAS_EN2 | PM800_GPADC_GP_BIAS_EN3);

 if (pdata && (pdata->batt_det == 0))
  data = (PM800_GPADC_GP_BIAS_EN0 | PM800_GPADC_GP_BIAS_EN1 |
   PM800_GPADC_GP_BIAS_EN2 | PM800_GPADC_GP_BIAS_EN3);
 else
  data = (PM800_GPADC_GP_BIAS_EN0 | PM800_GPADC_GP_BIAS_EN2 |
   PM800_GPADC_GP_BIAS_EN3);

 ret = regmap_update_bits(map, PM800_GP_BIAS_ENA1, mask, data);
 if (ret < 0)
  goto out;

 dev_info(chip->dev, "pm800 device_gpadc_init: Done\n");
 return 0;

out:
 dev_info(chip->dev, "pm800 device_gpadc_init: Failed!\n");
 return ret;
}
