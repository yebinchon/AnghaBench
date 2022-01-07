
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sunxi_nfc {int dev; int mod_clk; } ;
struct TYPE_2__ {int controller; } ;
struct sunxi_nand_chip {int clk_rate; scalar_t__ timing_ctl; int timing_cfg; TYPE_1__ nand; } ;
struct nand_sdr_timings {int tCLS_min; int tCLH_min; int tCS_min; int tCH_min; int tWP_min; int tWH_min; int tALS_min; int tDS_min; int tDH_min; int tRR_min; int tALH_min; int tRP_min; int tREH_min; int tRC_min; int tWC_min; int tWB_max; int tADL_min; int tWHR_min; int tRHW_min; int tREA_max; int tRLOH_min; } ;
struct nand_data_interface {int dummy; } ;
struct nand_chip {int dummy; } ;
typedef scalar_t__ s32 ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int ENOTSUPP ;
 scalar_t__ IS_ERR (struct nand_sdr_timings const*) ;
 int NAND_DATA_IFACE_CHECK_ONLY ;
 int NFC_TIMING_CFG (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ NFC_TIMING_CTL_EDO ;
 int NSEC_PER_SEC ;
 long clk_round_rate (int ,int) ;
 int dev_err (int ,char*,...) ;
 struct nand_sdr_timings* nand_get_sdr_timings (struct nand_data_interface const*) ;
 scalar_t__ sunxi_nand_lookup_timing (int ,int,int) ;
 int tRHW_lut ;
 int tWB_lut ;
 struct sunxi_nand_chip* to_sunxi_nand (struct nand_chip*) ;
 struct sunxi_nfc* to_sunxi_nfc (int ) ;

__attribute__((used)) static int sunxi_nfc_setup_data_interface(struct nand_chip *nand, int csline,
     const struct nand_data_interface *conf)
{
 struct sunxi_nand_chip *sunxi_nand = to_sunxi_nand(nand);
 struct sunxi_nfc *nfc = to_sunxi_nfc(sunxi_nand->nand.controller);
 const struct nand_sdr_timings *timings;
 u32 min_clk_period = 0;
 s32 tWB, tADL, tWHR, tRHW, tCAD;
 long real_clk_rate;

 timings = nand_get_sdr_timings(conf);
 if (IS_ERR(timings))
  return -ENOTSUPP;


 if (timings->tCLS_min > min_clk_period)
  min_clk_period = timings->tCLS_min;


 if (timings->tCLH_min > min_clk_period)
  min_clk_period = timings->tCLH_min;


 if (timings->tCS_min > min_clk_period)
  min_clk_period = timings->tCS_min;


 if (timings->tCH_min > min_clk_period)
  min_clk_period = timings->tCH_min;


 if (timings->tWP_min > min_clk_period)
  min_clk_period = timings->tWP_min;


 if (timings->tWH_min > min_clk_period)
  min_clk_period = timings->tWH_min;


 if (timings->tALS_min > min_clk_period)
  min_clk_period = timings->tALS_min;


 if (timings->tDS_min > min_clk_period)
  min_clk_period = timings->tDS_min;


 if (timings->tDH_min > min_clk_period)
  min_clk_period = timings->tDH_min;


 if (timings->tRR_min > (min_clk_period * 3))
  min_clk_period = DIV_ROUND_UP(timings->tRR_min, 3);


 if (timings->tALH_min > min_clk_period)
  min_clk_period = timings->tALH_min;


 if (timings->tRP_min > min_clk_period)
  min_clk_period = timings->tRP_min;


 if (timings->tREH_min > min_clk_period)
  min_clk_period = timings->tREH_min;


 if (timings->tRC_min > (min_clk_period * 2))
  min_clk_period = DIV_ROUND_UP(timings->tRC_min, 2);


 if (timings->tWC_min > (min_clk_period * 2))
  min_clk_period = DIV_ROUND_UP(timings->tWC_min, 2);


 if (timings->tWB_max > (min_clk_period * 20))
  min_clk_period = DIV_ROUND_UP(timings->tWB_max, 20);

 if (timings->tADL_min > (min_clk_period * 32))
  min_clk_period = DIV_ROUND_UP(timings->tADL_min, 32);

 if (timings->tWHR_min > (min_clk_period * 32))
  min_clk_period = DIV_ROUND_UP(timings->tWHR_min, 32);

 if (timings->tRHW_min > (min_clk_period * 20))
  min_clk_period = DIV_ROUND_UP(timings->tRHW_min, 20);
 if (timings->tREA_max > min_clk_period && !timings->tRLOH_min)
  min_clk_period = timings->tREA_max;

 tWB = sunxi_nand_lookup_timing(tWB_lut, timings->tWB_max,
     min_clk_period);
 if (tWB < 0) {
  dev_err(nfc->dev, "unsupported tWB\n");
  return tWB;
 }

 tADL = DIV_ROUND_UP(timings->tADL_min, min_clk_period) >> 3;
 if (tADL > 3) {
  dev_err(nfc->dev, "unsupported tADL\n");
  return -EINVAL;
 }

 tWHR = DIV_ROUND_UP(timings->tWHR_min, min_clk_period) >> 3;
 if (tWHR > 3) {
  dev_err(nfc->dev, "unsupported tWHR\n");
  return -EINVAL;
 }

 tRHW = sunxi_nand_lookup_timing(tRHW_lut, timings->tRHW_min,
     min_clk_period);
 if (tRHW < 0) {
  dev_err(nfc->dev, "unsupported tRHW\n");
  return tRHW;
 }

 if (csline == NAND_DATA_IFACE_CHECK_ONLY)
  return 0;





 tCAD = 0x7;


 sunxi_nand->timing_cfg = NFC_TIMING_CFG(tWB, tADL, tWHR, tRHW, tCAD);


 min_clk_period = DIV_ROUND_UP(min_clk_period, 1000);







 sunxi_nand->clk_rate = NSEC_PER_SEC / min_clk_period;
 real_clk_rate = clk_round_rate(nfc->mod_clk, sunxi_nand->clk_rate);
 if (real_clk_rate <= 0) {
  dev_err(nfc->dev, "Unable to round clk %lu\n",
   sunxi_nand->clk_rate);
  return -EINVAL;
 }

 sunxi_nand->timing_ctl = 0;






 min_clk_period = NSEC_PER_SEC / real_clk_rate;
 if (min_clk_period * 2 < 30 || min_clk_period * 1000 < timings->tREA_max)
  sunxi_nand->timing_ctl = NFC_TIMING_CTL_EDO;

 return 0;
}
