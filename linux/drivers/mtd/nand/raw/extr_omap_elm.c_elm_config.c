
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct elm_info {int bch_type; int ecc_steps; int ecc_syndrome_size; } ;
struct device {int dummy; } ;
typedef enum bch_ecc { ____Placeholder_bch_ecc } bch_ecc ;


 int ECC_BCH_LEVEL_MASK ;
 int EINVAL ;
 int ELM_ECC_SIZE ;
 int ELM_LOCATION_CONFIG ;
 int EPROBE_DEFER ;
 int ERROR_VECTOR_MAX ;
 int dev_err (struct device*,char*,...) ;
 struct elm_info* dev_get_drvdata (struct device*) ;
 int elm_write_reg (struct elm_info*,int ,int) ;

int elm_config(struct device *dev, enum bch_ecc bch_type,
 int ecc_steps, int ecc_step_size, int ecc_syndrome_size)
{
 u32 reg_val;
 struct elm_info *info = dev_get_drvdata(dev);

 if (!info) {
  dev_err(dev, "Unable to configure elm - device not probed?\n");
  return -EPROBE_DEFER;
 }

 if (ecc_step_size > ((ELM_ECC_SIZE + 1) / 2)) {
  dev_err(dev, "unsupported config ecc-size=%d\n", ecc_step_size);
  return -EINVAL;
 }

 if (ecc_steps > ERROR_VECTOR_MAX) {
  dev_err(dev, "unsupported config ecc-step=%d\n", ecc_steps);
  return -EINVAL;
 }

 reg_val = (bch_type & ECC_BCH_LEVEL_MASK) | (ELM_ECC_SIZE << 16);
 elm_write_reg(info, ELM_LOCATION_CONFIG, reg_val);
 info->bch_type = bch_type;
 info->ecc_steps = ecc_steps;
 info->ecc_syndrome_size = ecc_syndrome_size;

 return 0;
}
