
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int eee_ckdiv; int eee_cmod_lv; int _10m_ckdiv; int eee_plloff_giga; int _250m_ckdiv; } ;
struct r8152 {int flags; scalar_t__ eee_en; TYPE_1__ ups_info; } ;


 int EEE_CLKDIV_EN ;
 int EN_10M_CLKDIV ;
 int EN_EEE_1000 ;
 int EN_EEE_CMODE ;
 int GREEN_ETHERNET ;
 int MCU_TYPE_PLA ;
 int MCU_TYPE_USB ;
 int OCP_ADC_IOFFSET ;
 int OCP_DOWN_SPEED ;
 int OCP_NCTL_CFG ;
 int OCP_POWER_CFG ;
 int OCP_SYSCLK_CFG ;
 int PFM_PWM_SWITCH ;
 int PGA_RETURN_EN ;
 int PHY_RESET ;
 int PLA_PHY_PWR ;
 int R_TUNE_EN ;
 int SAW_CNT_1MS_MASK ;
 int SRAM_GREEN_CFG ;
 int USB_UPS_CFG ;
 int clk_div_expo (int) ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_reg_read (struct r8152*,int) ;
 int ocp_reg_write (struct r8152*,int,int) ;
 int ocp_write_word (struct r8152*,int ,int ,int) ;
 int r8152_efuse_read (struct r8152*,int) ;
 int r8152b_enable_fc (struct r8152*) ;
 int r8153_aldps_en (struct r8152*,int) ;
 int r8153_patch_request (struct r8152*,int) ;
 int r8153_u2p3en (struct r8152*,int) ;
 int r8153b_green_en (struct r8152*,int ) ;
 int rtl_eee_enable (struct r8152*,int) ;
 int set_bit (int ,int *) ;
 int sram_read (struct r8152*,int ) ;
 int sram_write (struct r8152*,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void r8153b_hw_phy_cfg(struct r8152 *tp)
{
 u32 ocp_data;
 u16 data;


 r8153_aldps_en(tp, 0);


 rtl_eee_enable(tp, 0);

 r8153b_green_en(tp, test_bit(GREEN_ETHERNET, &tp->flags));

 data = sram_read(tp, SRAM_GREEN_CFG);
 data |= R_TUNE_EN;
 sram_write(tp, SRAM_GREEN_CFG, data);
 data = ocp_reg_read(tp, OCP_NCTL_CFG);
 data |= PGA_RETURN_EN;
 ocp_reg_write(tp, OCP_NCTL_CFG, data);






 ocp_data = r8152_efuse_read(tp, 0x7d);
 data = (u16)(((ocp_data & 0x1fff0) >> 1) | (ocp_data & 0x7));
 if (data != 0xffff)
  ocp_reg_write(tp, OCP_ADC_IOFFSET, data);





 ocp_data = ocp_reg_read(tp, 0xc426);
 ocp_data &= 0x3fff;
 if (ocp_data) {
  u32 swr_cnt_1ms_ini;

  swr_cnt_1ms_ini = (16000000 / ocp_data) & SAW_CNT_1MS_MASK;
  ocp_data = ocp_read_word(tp, MCU_TYPE_USB, USB_UPS_CFG);
  ocp_data = (ocp_data & ~SAW_CNT_1MS_MASK) | swr_cnt_1ms_ini;
  ocp_write_word(tp, MCU_TYPE_USB, USB_UPS_CFG, ocp_data);
 }

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_PHY_PWR);
 ocp_data |= PFM_PWM_SWITCH;
 ocp_write_word(tp, MCU_TYPE_PLA, PLA_PHY_PWR, ocp_data);


 if (!r8153_patch_request(tp, 1)) {
  data = ocp_reg_read(tp, OCP_POWER_CFG);
  data |= EEE_CLKDIV_EN;
  ocp_reg_write(tp, OCP_POWER_CFG, data);
  tp->ups_info.eee_ckdiv = 1;

  data = ocp_reg_read(tp, OCP_DOWN_SPEED);
  data |= EN_EEE_CMODE | EN_EEE_1000 | EN_10M_CLKDIV;
  ocp_reg_write(tp, OCP_DOWN_SPEED, data);
  tp->ups_info.eee_cmod_lv = 1;
  tp->ups_info._10m_ckdiv = 1;
  tp->ups_info.eee_plloff_giga = 1;

  ocp_reg_write(tp, OCP_SYSCLK_CFG, 0);
  ocp_reg_write(tp, OCP_SYSCLK_CFG, clk_div_expo(5));
  tp->ups_info._250m_ckdiv = 1;

  r8153_patch_request(tp, 0);
 }

 if (tp->eee_en)
  rtl_eee_enable(tp, 1);

 r8153_aldps_en(tp, 1);
 r8152b_enable_fc(tp);
 r8153_u2p3en(tp, 1);

 set_bit(PHY_RESET, &tp->flags);
}
