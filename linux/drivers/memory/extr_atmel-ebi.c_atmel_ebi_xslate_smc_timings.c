
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device_node {int dummy; } ;
struct atmel_smc_timing_xlate {char* name; int (* converter ) (struct atmel_smc_cs_conf*,int ,unsigned int) ;int shift; } ;
struct atmel_smc_cs_conf {int mode; } ;
struct atmel_ebi_dev {TYPE_1__* ebi; } ;
struct TYPE_2__ {int dev; int clk; } ;


 int ARRAY_SIZE (struct atmel_smc_timing_xlate*) ;
 int ATMEL_SMC_MODE_TDF (unsigned int) ;
 unsigned int ATMEL_SMC_MODE_TDF_MAX ;
 unsigned int ATMEL_SMC_MODE_TDF_MIN ;
 unsigned int DIV_ROUND_UP (int ,unsigned int) ;
 int EINVAL ;
 unsigned int NSEC_PER_SEC ;
 unsigned int clk_get_rate (int ) ;
 int dev_err (int ,char*,struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int stub1 (struct atmel_smc_cs_conf*,int ,unsigned int) ;
 struct atmel_smc_timing_xlate* timings_xlate_table ;

__attribute__((used)) static int atmel_ebi_xslate_smc_timings(struct atmel_ebi_dev *ebid,
     struct device_node *np,
     struct atmel_smc_cs_conf *smcconf)
{
 unsigned int clk_rate = clk_get_rate(ebid->ebi->clk);
 unsigned int clk_period_ns = NSEC_PER_SEC / clk_rate;
 bool required = 0;
 unsigned int ncycles;
 int ret, i;
 u32 val;

 ret = of_property_read_u32(np, "atmel,smc-tdf-ns", &val);
 if (!ret) {
  required = 1;
  ncycles = DIV_ROUND_UP(val, clk_period_ns);
  if (ncycles > ATMEL_SMC_MODE_TDF_MAX) {
   ret = -EINVAL;
   goto out;
  }

  if (ncycles < ATMEL_SMC_MODE_TDF_MIN)
   ncycles = ATMEL_SMC_MODE_TDF_MIN;

  smcconf->mode |= ATMEL_SMC_MODE_TDF(ncycles);
 }

 for (i = 0; i < ARRAY_SIZE(timings_xlate_table); i++) {
  const struct atmel_smc_timing_xlate *xlate;

  xlate = &timings_xlate_table[i];

  ret = of_property_read_u32(np, xlate->name, &val);
  if (ret) {
   if (!required)
    continue;
   else
    break;
  }

  if (!required) {
   ret = -EINVAL;
   break;
  }

  ncycles = DIV_ROUND_UP(val, clk_period_ns);
  ret = xlate->converter(smcconf, xlate->shift, ncycles);
  if (ret)
   goto out;
 }

out:
 if (ret) {
  dev_err(ebid->ebi->dev,
   "missing or invalid timings definition in %pOF",
   np);
  return ret;
 }

 return required;
}
