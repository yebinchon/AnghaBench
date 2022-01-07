
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct r8152 {int version; int flags; scalar_t__ eee_en; } ;


 int CTAP_SHORT_EN ;
 int EEE_CLKDIV_EN ;
 int EN_10M_BGOFF ;
 int EN_10M_PLLOFF ;
 int MCU_TYPE_PLA ;
 int OCP_DOWN_SPEED ;
 int OCP_EEE_CFG ;
 int OCP_POWER_CFG ;
 int PFM_PWM_SWITCH ;
 int PHY_RESET ;
 int PLA_PHY_PWR ;




 int SRAM_10M_AMP1 ;
 int SRAM_10M_AMP2 ;
 int SRAM_IMPEDANCE ;
 int SRAM_LPF_CFG ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_reg_read (struct r8152*,int ) ;
 int ocp_reg_write (struct r8152*,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int ) ;
 int r8152b_enable_fc (struct r8152*) ;
 int r8153_aldps_en (struct r8152*,int) ;
 int r8153_u2p3en (struct r8152*,int) ;
 int rtl_eee_enable (struct r8152*,int) ;
 int set_bit (int ,int *) ;
 int sram_write (struct r8152*,int ,int) ;

__attribute__((used)) static void r8153_hw_phy_cfg(struct r8152 *tp)
{
 u32 ocp_data;
 u16 data;


 r8153_aldps_en(tp, 0);


 rtl_eee_enable(tp, 0);

 if (tp->version == 131) {
  data = ocp_reg_read(tp, OCP_EEE_CFG);
  data &= ~CTAP_SHORT_EN;
  ocp_reg_write(tp, OCP_EEE_CFG, data);
 }

 data = ocp_reg_read(tp, OCP_POWER_CFG);
 data |= EEE_CLKDIV_EN;
 ocp_reg_write(tp, OCP_POWER_CFG, data);

 data = ocp_reg_read(tp, OCP_DOWN_SPEED);
 data |= EN_10M_BGOFF;
 ocp_reg_write(tp, OCP_DOWN_SPEED, data);
 data = ocp_reg_read(tp, OCP_POWER_CFG);
 data |= EN_10M_PLLOFF;
 ocp_reg_write(tp, OCP_POWER_CFG, data);
 sram_write(tp, SRAM_IMPEDANCE, 0x0b13);

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_PHY_PWR);
 ocp_data |= PFM_PWM_SWITCH;
 ocp_write_word(tp, MCU_TYPE_PLA, PLA_PHY_PWR, ocp_data);


 sram_write(tp, SRAM_LPF_CFG, 0xf70f);


 sram_write(tp, SRAM_10M_AMP1, 0x00af);
 sram_write(tp, SRAM_10M_AMP2, 0x0208);

 if (tp->eee_en)
  rtl_eee_enable(tp, 1);

 r8153_aldps_en(tp, 1);
 r8152b_enable_fc(tp);

 switch (tp->version) {
 case 131:
 case 130:
  break;
 case 129:
 case 128:
 default:
  r8153_u2p3en(tp, 1);
  break;
 }

 set_bit(PHY_RESET, &tp->flags);
}
