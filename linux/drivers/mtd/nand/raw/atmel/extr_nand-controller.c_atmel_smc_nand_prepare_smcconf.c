
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int tRC_min; int tWP_min; int tCLS_min; int tDS_min; int tCLH_min; int tWC_min; int tREH_min; int tRHOH_min; int tRHZ_max; int tRP_min; int tCLR_min; int tADL_min; int tAR_min; int tRR_min; int tWB_max; int tWH_min; int tDH_min; int tALH_min; int tCH_min; int tALS_min; int tCS_min; } ;
struct TYPE_5__ {TYPE_1__ sdr; } ;
struct nand_data_interface {scalar_t__ type; TYPE_2__ timings; } ;
struct atmel_smc_cs_conf {int mode; int timings; } ;
struct atmel_nand_controller {int mck; } ;
struct TYPE_6__ {int options; int controller; } ;
struct atmel_nand {TYPE_3__ base; } ;


 int ATMEL_HSMC_TIMINGS_NFSEL ;
 int ATMEL_HSMC_TIMINGS_TADL_SHIFT ;
 int ATMEL_HSMC_TIMINGS_TAR_SHIFT ;
 int ATMEL_HSMC_TIMINGS_TCLR_SHIFT ;
 int ATMEL_HSMC_TIMINGS_TRR_SHIFT ;
 int ATMEL_HSMC_TIMINGS_TWB_SHIFT ;
 int ATMEL_SMC_MODE_DBW_16 ;
 int ATMEL_SMC_MODE_READMODE_NRD ;
 int ATMEL_SMC_MODE_TDF (int) ;
 int ATMEL_SMC_MODE_TDFMODE_OPTIMIZED ;
 int ATMEL_SMC_MODE_TDF_MAX ;
 int ATMEL_SMC_MODE_TDF_MIN ;
 int ATMEL_SMC_MODE_WRITEMODE_NWE ;
 int ATMEL_SMC_NCS_RD_SHIFT ;
 int ATMEL_SMC_NCS_WR_SHIFT ;
 int ATMEL_SMC_NRD_SHIFT ;
 int ATMEL_SMC_NWE_SHIFT ;
 int DIV_ROUND_UP (int,int) ;
 int ENOTSUPP ;
 int ERANGE ;
 int NAND_BUSWIDTH_16 ;
 scalar_t__ NAND_SDR_IFACE ;
 int NSEC_PER_SEC ;
 int atmel_smc_cs_conf_init (struct atmel_smc_cs_conf*) ;
 int atmel_smc_cs_conf_set_cycle (struct atmel_smc_cs_conf*,int ,int) ;
 int atmel_smc_cs_conf_set_pulse (struct atmel_smc_cs_conf*,int ,int) ;
 int atmel_smc_cs_conf_set_setup (struct atmel_smc_cs_conf*,int ,int) ;
 int atmel_smc_cs_conf_set_timing (struct atmel_smc_cs_conf*,int ,int) ;
 int clk_get_rate (int ) ;
 int max (int,int) ;
 int max3 (int,int ,int ) ;
 struct atmel_nand_controller* to_nand_controller (int ) ;

__attribute__((used)) static int atmel_smc_nand_prepare_smcconf(struct atmel_nand *nand,
     const struct nand_data_interface *conf,
     struct atmel_smc_cs_conf *smcconf)
{
 u32 ncycles, totalcycles, timeps, mckperiodps;
 struct atmel_nand_controller *nc;
 int ret;

 nc = to_nand_controller(nand->base.controller);


 if (conf->type != NAND_SDR_IFACE)
  return -ENOTSUPP;





 if (conf->timings.sdr.tRC_min < 30000)
  return -ENOTSUPP;

 atmel_smc_cs_conf_init(smcconf);

 mckperiodps = NSEC_PER_SEC / clk_get_rate(nc->mck);
 mckperiodps *= 1000;






 ncycles = DIV_ROUND_UP(conf->timings.sdr.tWP_min, mckperiodps);
 totalcycles = ncycles;
 ret = atmel_smc_cs_conf_set_pulse(smcconf, ATMEL_SMC_NWE_SHIFT,
       ncycles);
 if (ret)
  return ret;
 timeps = max3(conf->timings.sdr.tCLS_min, conf->timings.sdr.tCS_min,
        conf->timings.sdr.tALS_min);
 timeps = max(timeps, conf->timings.sdr.tDS_min);
 ncycles = DIV_ROUND_UP(timeps, mckperiodps);
 ncycles = ncycles > totalcycles ? ncycles - totalcycles : 0;
 totalcycles += ncycles;
 ret = atmel_smc_cs_conf_set_setup(smcconf, ATMEL_SMC_NWE_SHIFT,
       ncycles);
 if (ret)
  return ret;







 timeps = max3(conf->timings.sdr.tCLH_min, conf->timings.sdr.tCH_min,
        conf->timings.sdr.tALH_min);
 timeps = max3(timeps, conf->timings.sdr.tDH_min,
        conf->timings.sdr.tWH_min);
 ncycles = DIV_ROUND_UP(timeps, mckperiodps);
 totalcycles += ncycles;
 ncycles = DIV_ROUND_UP(conf->timings.sdr.tWC_min, mckperiodps);
 ncycles = max(totalcycles, ncycles);
 ret = atmel_smc_cs_conf_set_cycle(smcconf, ATMEL_SMC_NWE_SHIFT,
       ncycles);
 if (ret)
  return ret;
 ret = atmel_smc_cs_conf_set_pulse(smcconf, ATMEL_SMC_NCS_WR_SHIFT,
       ncycles);
 if (ret)
  return ret;







 timeps = max(conf->timings.sdr.tREH_min, conf->timings.sdr.tRHOH_min);
 ncycles = DIV_ROUND_UP(timeps, mckperiodps);
 totalcycles = ncycles;




 ncycles = DIV_ROUND_UP(conf->timings.sdr.tRHZ_max, mckperiodps);
 ncycles -= totalcycles;







 if (ncycles > ATMEL_SMC_MODE_TDF_MAX)
  ncycles = ATMEL_SMC_MODE_TDF_MAX;
 else if (ncycles < ATMEL_SMC_MODE_TDF_MIN)
  ncycles = ATMEL_SMC_MODE_TDF_MIN;

 smcconf->mode |= ATMEL_SMC_MODE_TDF(ncycles) |
    ATMEL_SMC_MODE_TDFMODE_OPTIMIZED;






 ncycles = DIV_ROUND_UP(conf->timings.sdr.tRP_min, mckperiodps);
 totalcycles += ncycles;
 ret = atmel_smc_cs_conf_set_pulse(smcconf, ATMEL_SMC_NRD_SHIFT,
       ncycles);
 if (ret)
  return ret;
 ncycles = DIV_ROUND_UP(conf->timings.sdr.tRC_min, mckperiodps);
 ncycles = max(totalcycles, ncycles);
 ret = atmel_smc_cs_conf_set_cycle(smcconf, ATMEL_SMC_NRD_SHIFT,
       ncycles);
 if (ret)
  return ret;
 ret = atmel_smc_cs_conf_set_pulse(smcconf, ATMEL_SMC_NCS_RD_SHIFT,
       ncycles);
 if (ret)
  return ret;


 ncycles = DIV_ROUND_UP(conf->timings.sdr.tCLR_min, mckperiodps);
 ret = atmel_smc_cs_conf_set_timing(smcconf,
        ATMEL_HSMC_TIMINGS_TCLR_SHIFT,
        ncycles);
 if (ret)
  return ret;

 ncycles = DIV_ROUND_UP(conf->timings.sdr.tADL_min, mckperiodps);
 ret = atmel_smc_cs_conf_set_timing(smcconf,
        ATMEL_HSMC_TIMINGS_TADL_SHIFT,
        ncycles);
 if (ret && ret != -ERANGE)
  return ret;

 ncycles = DIV_ROUND_UP(conf->timings.sdr.tAR_min, mckperiodps);
 ret = atmel_smc_cs_conf_set_timing(smcconf,
        ATMEL_HSMC_TIMINGS_TAR_SHIFT,
        ncycles);
 if (ret)
  return ret;

 ncycles = DIV_ROUND_UP(conf->timings.sdr.tRR_min, mckperiodps);
 ret = atmel_smc_cs_conf_set_timing(smcconf,
        ATMEL_HSMC_TIMINGS_TRR_SHIFT,
        ncycles);
 if (ret)
  return ret;

 ncycles = DIV_ROUND_UP(conf->timings.sdr.tWB_max, mckperiodps);
 ret = atmel_smc_cs_conf_set_timing(smcconf,
        ATMEL_HSMC_TIMINGS_TWB_SHIFT,
        ncycles);
 if (ret)
  return ret;


 smcconf->timings |= ATMEL_HSMC_TIMINGS_NFSEL;


 if (nand->base.options & NAND_BUSWIDTH_16)
  smcconf->mode |= ATMEL_SMC_MODE_DBW_16;


 smcconf->mode |= ATMEL_SMC_MODE_READMODE_NRD |
    ATMEL_SMC_MODE_WRITEMODE_NWE;

 return 0;
}
