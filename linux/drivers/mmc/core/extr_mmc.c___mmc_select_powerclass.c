
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vdd; int clock; } ;
struct mmc_host {TYPE_1__ ios; } ;
struct mmc_ext_csd {unsigned int raw_pwr_cl_26_195; unsigned int raw_pwr_cl_52_195; unsigned int raw_pwr_cl_ddr_52_195; unsigned int raw_pwr_cl_200_195; unsigned int raw_pwr_cl_26_360; unsigned int raw_pwr_cl_52_360; unsigned int raw_pwr_cl_ddr_52_360; unsigned int raw_pwr_cl_ddr_200_360; unsigned int raw_pwr_cl_200_360; int generic_cmd6_time; } ;
struct mmc_card {struct mmc_ext_csd ext_csd; struct mmc_host* host; } ;


 int EINVAL ;
 unsigned int EXT_CSD_BUS_WIDTH_8 ;
 int EXT_CSD_CMD_SET_NORMAL ;
 unsigned int EXT_CSD_DDR_BUS_WIDTH_8 ;
 int EXT_CSD_POWER_CLASS ;
 unsigned int EXT_CSD_PWR_CL_4BIT_MASK ;
 unsigned int EXT_CSD_PWR_CL_4BIT_SHIFT ;
 unsigned int EXT_CSD_PWR_CL_8BIT_MASK ;
 unsigned int EXT_CSD_PWR_CL_8BIT_SHIFT ;
 int MMC_HIGH_26_MAX_DTR ;
 int MMC_HIGH_52_MAX_DTR ;
 int MMC_HS200_MAX_DTR ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_switch (struct mmc_card*,int ,int ,unsigned int,int ) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int __mmc_select_powerclass(struct mmc_card *card,
       unsigned int bus_width)
{
 struct mmc_host *host = card->host;
 struct mmc_ext_csd *ext_csd = &card->ext_csd;
 unsigned int pwrclass_val = 0;
 int err = 0;

 switch (1 << host->ios.vdd) {
 case 137:
  if (host->ios.clock <= MMC_HIGH_26_MAX_DTR)
   pwrclass_val = ext_csd->raw_pwr_cl_26_195;
  else if (host->ios.clock <= MMC_HIGH_52_MAX_DTR)
   pwrclass_val = (bus_width <= EXT_CSD_BUS_WIDTH_8) ?
    ext_csd->raw_pwr_cl_52_195 :
    ext_csd->raw_pwr_cl_ddr_52_195;
  else if (host->ios.clock <= MMC_HS200_MAX_DTR)
   pwrclass_val = ext_csd->raw_pwr_cl_200_195;
  break;
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  if (host->ios.clock <= MMC_HIGH_26_MAX_DTR)
   pwrclass_val = ext_csd->raw_pwr_cl_26_360;
  else if (host->ios.clock <= MMC_HIGH_52_MAX_DTR)
   pwrclass_val = (bus_width <= EXT_CSD_BUS_WIDTH_8) ?
    ext_csd->raw_pwr_cl_52_360 :
    ext_csd->raw_pwr_cl_ddr_52_360;
  else if (host->ios.clock <= MMC_HS200_MAX_DTR)
   pwrclass_val = (bus_width == EXT_CSD_DDR_BUS_WIDTH_8) ?
    ext_csd->raw_pwr_cl_ddr_200_360 :
    ext_csd->raw_pwr_cl_200_360;
  break;
 default:
  pr_warn("%s: Voltage range not supported for power class\n",
   mmc_hostname(host));
  return -EINVAL;
 }

 if (bus_width & (EXT_CSD_BUS_WIDTH_8 | EXT_CSD_DDR_BUS_WIDTH_8))
  pwrclass_val = (pwrclass_val & EXT_CSD_PWR_CL_8BIT_MASK) >>
    EXT_CSD_PWR_CL_8BIT_SHIFT;
 else
  pwrclass_val = (pwrclass_val & EXT_CSD_PWR_CL_4BIT_MASK) >>
    EXT_CSD_PWR_CL_4BIT_SHIFT;


 if (pwrclass_val > 0) {
  err = mmc_switch(card, EXT_CSD_CMD_SET_NORMAL,
     EXT_CSD_POWER_CLASS,
     pwrclass_val,
     card->ext_csd.generic_cmd6_time);
 }

 return err;
}
