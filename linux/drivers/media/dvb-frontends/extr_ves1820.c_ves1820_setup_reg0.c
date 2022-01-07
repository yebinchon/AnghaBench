
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ves1820_state {int reg0; TYPE_1__* config; } ;
typedef enum fe_spectral_inversion { ____Placeholder_fe_spectral_inversion } fe_spectral_inversion ;
struct TYPE_2__ {int invert; } ;


 int INVERSION_OFF ;
 int INVERSION_ON ;
 int ves1820_writereg (struct ves1820_state*,int,int) ;

__attribute__((used)) static int ves1820_setup_reg0(struct ves1820_state *state,
         u8 reg0, enum fe_spectral_inversion inversion)
{
 reg0 |= state->reg0 & 0x62;

 if (INVERSION_ON == inversion) {
  if (!state->config->invert) reg0 |= 0x20;
  else reg0 &= ~0x20;
 } else if (INVERSION_OFF == inversion) {
  if (!state->config->invert) reg0 &= ~0x20;
  else reg0 |= 0x20;
 }

 ves1820_writereg(state, 0x00, reg0 & 0xfe);
 ves1820_writereg(state, 0x00, reg0 | 0x01);

 state->reg0 = reg0;

 return 0;
}
