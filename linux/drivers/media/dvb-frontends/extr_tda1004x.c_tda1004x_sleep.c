
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tda1004x_state {int demod_type; TYPE_1__* config; } ;
struct dvb_frontend {struct tda1004x_state* demodulator_priv; } ;
struct TYPE_2__ {int gpio_config; } ;


 int TDA10046H_CONF_POLARITY ;
 int TDA10046H_CONF_TRISTATE1 ;
 int TDA10046_GP00_I ;
 int TDA1004X_CONFADC1 ;
 int TDA1004X_CONFADC2 ;
 int TDA1004X_CONFC4 ;


 int tda1004x_write_byteI (struct tda1004x_state*,int ,int) ;
 int tda1004x_write_mask (struct tda1004x_state*,int ,int,int) ;

__attribute__((used)) static int tda1004x_sleep(struct dvb_frontend* fe)
{
 struct tda1004x_state* state = fe->demodulator_priv;
 int gpio_conf;

 switch (state->demod_type) {
 case 129:
  tda1004x_write_mask(state, TDA1004X_CONFADC1, 0x10, 0x10);
  break;

 case 128:

  tda1004x_write_byteI(state, TDA10046H_CONF_TRISTATE1, 0xff);

  gpio_conf = state->config->gpio_config;
  if (gpio_conf >= TDA10046_GP00_I)
   tda1004x_write_mask(state, TDA10046H_CONF_POLARITY, 0x0f,
       (gpio_conf & 0x0f) ^ 0x0a);

  tda1004x_write_mask(state, TDA1004X_CONFADC2, 0xc0, 0xc0);
  tda1004x_write_mask(state, TDA1004X_CONFC4, 1, 1);
  break;
 }

 return 0;
}
