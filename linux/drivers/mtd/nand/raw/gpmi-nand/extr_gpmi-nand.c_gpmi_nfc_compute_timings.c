
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct nand_sdr_timings {int tRC_min; int tREA_max; scalar_t__ tR_max; scalar_t__ tWB_max; scalar_t__ tDH_min; scalar_t__ tDS_min; scalar_t__ tALS_min; } ;
struct gpmi_nfc_hardware_timing {int clk_rate; int timing0; int ctrl1n; int timing1; } ;
struct gpmi_nand_data {TYPE_1__* devdata; struct gpmi_nfc_hardware_timing hw; } ;
struct TYPE_2__ {unsigned int max_chain_delay; } ;


 int BF_GPMI_CTRL1_RDN_DELAY (int) ;
 int BF_GPMI_CTRL1_WRN_DLY_SEL (int ) ;
 int BF_GPMI_TIMING0_ADDRESS_SETUP (unsigned int) ;
 int BF_GPMI_TIMING0_DATA_HOLD (unsigned int) ;
 int BF_GPMI_TIMING0_DATA_SETUP (unsigned int) ;
 int BF_GPMI_TIMING1_BUSY_TIMEOUT (int) ;
 int BM_GPMI_CTRL1_DLL_ENABLE ;
 int BM_GPMI_CTRL1_HALF_PERIOD ;
 int BV_GPMI_CTRL1_WRN_DLY_SEL_4_TO_8NS ;
 int BV_GPMI_CTRL1_WRN_DLY_SEL_NO_DELAY ;
 scalar_t__ NSEC_PER_SEC ;
 void* TO_CYCLES (scalar_t__,unsigned int) ;
 unsigned int div_u64 (int,int) ;

__attribute__((used)) static void gpmi_nfc_compute_timings(struct gpmi_nand_data *this,
         const struct nand_sdr_timings *sdr)
{
 struct gpmi_nfc_hardware_timing *hw = &this->hw;
 unsigned int dll_threshold_ps = this->devdata->max_chain_delay;
 unsigned int period_ps, reference_period_ps;
 unsigned int data_setup_cycles, data_hold_cycles, addr_setup_cycles;
 unsigned int tRP_ps;
 bool use_half_period;
 int sample_delay_ps, sample_delay_factor;
 u16 busy_timeout_cycles;
 u8 wrn_dly_sel;

 if (sdr->tRC_min >= 30000) {

  hw->clk_rate = 22000000;
  wrn_dly_sel = BV_GPMI_CTRL1_WRN_DLY_SEL_4_TO_8NS;
 } else if (sdr->tRC_min >= 25000) {

  hw->clk_rate = 80000000;
  wrn_dly_sel = BV_GPMI_CTRL1_WRN_DLY_SEL_NO_DELAY;
 } else {

  hw->clk_rate = 100000000;
  wrn_dly_sel = BV_GPMI_CTRL1_WRN_DLY_SEL_NO_DELAY;
 }


 period_ps = div_u64((u64)NSEC_PER_SEC * 1000, hw->clk_rate);

 addr_setup_cycles = TO_CYCLES(sdr->tALS_min, period_ps);
 data_setup_cycles = TO_CYCLES(sdr->tDS_min, period_ps);
 data_hold_cycles = TO_CYCLES(sdr->tDH_min, period_ps);
 busy_timeout_cycles = TO_CYCLES(sdr->tWB_max + sdr->tR_max, period_ps);

 hw->timing0 = BF_GPMI_TIMING0_ADDRESS_SETUP(addr_setup_cycles) |
        BF_GPMI_TIMING0_DATA_HOLD(data_hold_cycles) |
        BF_GPMI_TIMING0_DATA_SETUP(data_setup_cycles);
 hw->timing1 = BF_GPMI_TIMING1_BUSY_TIMEOUT(busy_timeout_cycles * 4096);
 if (period_ps > dll_threshold_ps) {
  use_half_period = 1;
  reference_period_ps = period_ps / 2;
 } else {
  use_half_period = 0;
  reference_period_ps = period_ps;
 }

 tRP_ps = data_setup_cycles * period_ps;
 sample_delay_ps = (sdr->tREA_max + 4000 - tRP_ps) * 8;
 if (sample_delay_ps > 0)
  sample_delay_factor = sample_delay_ps / reference_period_ps;
 else
  sample_delay_factor = 0;

 hw->ctrl1n = BF_GPMI_CTRL1_WRN_DLY_SEL(wrn_dly_sel);
 if (sample_delay_factor)
  hw->ctrl1n |= BF_GPMI_CTRL1_RDN_DELAY(sample_delay_factor) |
         BM_GPMI_CTRL1_DLL_ENABLE |
         (use_half_period ? BM_GPMI_CTRL1_HALF_PERIOD : 0);
}
