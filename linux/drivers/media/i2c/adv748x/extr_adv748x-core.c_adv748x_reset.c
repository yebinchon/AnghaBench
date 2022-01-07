
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adv748x_state {int txb; int txa; } ;


 int ADV748X_CP_CLMP_POS ;
 int ADV748X_CP_CLMP_POS_DIS_AUTO ;
 int ADV748X_IO_10 ;
 int ADV748X_IO_10_CSI1_EN ;
 int ADV748X_IO_10_CSI4_EN ;
 int ADV748X_IO_PD ;
 int ADV748X_IO_PD_RX_EN ;
 int adv748x_init_afe ;
 int adv748x_init_hdmi ;
 int adv748x_set_slave_addresses (struct adv748x_state*) ;
 int adv748x_sw_reset (struct adv748x_state*) ;
 int adv748x_tx_power (int *,int) ;
 int adv748x_write_regs (struct adv748x_state*,int ) ;
 int cp_clrset (struct adv748x_state*,int ,int ,int ) ;
 int io_write (struct adv748x_state*,int ,int ) ;
 scalar_t__ is_tx_enabled (int *) ;

__attribute__((used)) static int adv748x_reset(struct adv748x_state *state)
{
 int ret;
 u8 regval = 0;

 ret = adv748x_sw_reset(state);
 if (ret < 0)
  return ret;

 ret = adv748x_set_slave_addresses(state);
 if (ret < 0)
  return ret;


 ret = adv748x_write_regs(state, adv748x_init_hdmi);
 if (ret)
  return ret;

 ret = adv748x_write_regs(state, adv748x_init_afe);
 if (ret)
  return ret;


 adv748x_tx_power(&state->txa, 1);
 adv748x_tx_power(&state->txa, 0);
 adv748x_tx_power(&state->txb, 1);
 adv748x_tx_power(&state->txb, 0);


 io_write(state, ADV748X_IO_PD, ADV748X_IO_PD_RX_EN);


 if (is_tx_enabled(&state->txa))
  regval |= ADV748X_IO_10_CSI4_EN;
 if (is_tx_enabled(&state->txb))
  regval |= ADV748X_IO_10_CSI1_EN;
 io_write(state, ADV748X_IO_10, regval);


 cp_clrset(state, ADV748X_CP_CLMP_POS, ADV748X_CP_CLMP_POS_DIS_AUTO,
           ADV748X_CP_CLMP_POS_DIS_AUTO);

 return 0;
}
