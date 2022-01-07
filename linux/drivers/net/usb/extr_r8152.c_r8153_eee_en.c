
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int eee; } ;
struct r8152 {TYPE_1__ ups_info; } ;


 int EEE10_EN ;
 int EEE_RX_EN ;
 int EEE_TX_EN ;
 int MCU_TYPE_PLA ;
 int OCP_EEE_CFG ;
 int PLA_EEE_CR ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_reg_read (struct r8152*,int ) ;
 int ocp_reg_write (struct r8152*,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int) ;

__attribute__((used)) static void r8153_eee_en(struct r8152 *tp, bool enable)
{
 u32 ocp_data;
 u16 config;

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_EEE_CR);
 config = ocp_reg_read(tp, OCP_EEE_CFG);

 if (enable) {
  ocp_data |= EEE_RX_EN | EEE_TX_EN;
  config |= EEE10_EN;
 } else {
  ocp_data &= ~(EEE_RX_EN | EEE_TX_EN);
  config &= ~EEE10_EN;
 }

 ocp_write_word(tp, MCU_TYPE_PLA, PLA_EEE_CR, ocp_data);
 ocp_reg_write(tp, OCP_EEE_CFG, config);

 tp->ups_info.eee = enable;
}
