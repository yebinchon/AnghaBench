
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct r8152 {int dummy; } ;


 int EEE_10_CAP ;
 int EEE_NWAY_EN ;
 int EEE_RX_EN ;
 int EEE_TX_EN ;
 int MCU_TYPE_PLA ;
 int OCP_EEE_CONFIG1 ;
 int OCP_EEE_CONFIG2 ;
 int OCP_EEE_CONFIG3 ;
 int PLA_EEE_CR ;
 int RG_DACQUIET_EN ;
 int RG_LDVQUIET_EN ;
 int RX_QUIET_EN ;
 int TX_QUIET_EN ;
 int fast_snr (int) ;
 int fast_snr_mask ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_reg_read (struct r8152*,int ) ;
 int ocp_reg_write (struct r8152*,int ,int) ;
 int ocp_write_word (struct r8152*,int ,int ,int) ;
 int sd_rise_time (int) ;
 int sd_rise_time_mask ;

__attribute__((used)) static void r8152_eee_en(struct r8152 *tp, bool enable)
{
 u16 config1, config2, config3;
 u32 ocp_data;

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_EEE_CR);
 config1 = ocp_reg_read(tp, OCP_EEE_CONFIG1) & ~sd_rise_time_mask;
 config2 = ocp_reg_read(tp, OCP_EEE_CONFIG2);
 config3 = ocp_reg_read(tp, OCP_EEE_CONFIG3) & ~fast_snr_mask;

 if (enable) {
  ocp_data |= EEE_RX_EN | EEE_TX_EN;
  config1 |= EEE_10_CAP | EEE_NWAY_EN | TX_QUIET_EN | RX_QUIET_EN;
  config1 |= sd_rise_time(1);
  config2 |= RG_DACQUIET_EN | RG_LDVQUIET_EN;
  config3 |= fast_snr(42);
 } else {
  ocp_data &= ~(EEE_RX_EN | EEE_TX_EN);
  config1 &= ~(EEE_10_CAP | EEE_NWAY_EN | TX_QUIET_EN |
        RX_QUIET_EN);
  config1 |= sd_rise_time(7);
  config2 &= ~(RG_DACQUIET_EN | RG_LDVQUIET_EN);
  config3 |= fast_snr(511);
 }

 ocp_write_word(tp, MCU_TYPE_PLA, PLA_EEE_CR, ocp_data);
 ocp_reg_write(tp, OCP_EEE_CONFIG1, config1);
 ocp_reg_write(tp, OCP_EEE_CONFIG2, config2);
 ocp_reg_write(tp, OCP_EEE_CONFIG3, config3);
}
